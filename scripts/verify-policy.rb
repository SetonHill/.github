#!/usr/bin/env ruby
require "pathname"

root = Pathname.new(File.expand_path("..", __dir__))
version = "0.2.0"
errors = []

required = %w[
  README.md
  profile/README.md
  STUDENT-POLICY.md
  FACULTY-POLICY.md
  SECURITY.md
  CODE_OF_CONDUCT.md
  PRIVACY.md
  REPOSITORY-STANDARDS.md
  EXCEPTIONS-AND-OVERRIDES.md
  FACULTY-PROVISIONING-CHECKLIST.md
  STUDENT-START-CHECKLIST.md
  BOOTSTRAP-RECORD.md
]

required.each do |relative|
  path = root.join(relative)
  errors << "missing or empty #{relative}" unless path.file? && path.size.positive?
end

hold_files = %w[FACULTY-POLICY.md EXCEPTIONS-AND-OVERRIDES.md PRIVACY.md REPOSITORY-STANDARDS.md SECURITY.md FACULTY-PROVISIONING-CHECKLIST.md]
hold_files.each do |relative|
  source = File.read(root.join(relative))
  ["Legal Hold", "Required Preservation", "least privilege", "operational policy", "not legal advice"].each do |phrase|
    errors << "#{relative}: missing preservation phrase #{phrase}" unless source.downcase.include?(phrase.downcase)
  end
end

markdown = Dir[root.join("**/*.md")].sort
markdown.each do |path|
  relative = Pathname.new(path).relative_path_from(root).to_s
  source = File.read(path)
  errors << "#{relative}: missing Version: #{version}" unless source.match?(/^Version: #{Regexp.escape(version)}$/)
  errors << "#{relative}: unresolved publication marker" if source.match?(/\[(?:DECISION REQUIRED|PUBLICATION PLACEHOLDER)/i)
  incomplete_patterns = [
    /\bto be determined\b/i,
    /\bdecision required\b/i,
    /\bpublication placeholder\b/i,
    /\bunresolved choice\b/i,
    /\bpending (?:decision|approval|review|determination)\b/i,
    /\b(?:faculty|IT|legal|instructor) must decide\b/i,
    /\bneeds? (?:approval|review) before (?:publication|adoption|this policy applies)\b/i
  ]
  incomplete_patterns.each do |pattern|
    errors << "#{relative}: incomplete-policy language #{pattern.inspect}" if source.match?(pattern)
  end
  errors << "#{relative}: private email address" if source.match?(/[A-Z0-9._%+-]+@(?:setonhill\.edu|gmail\.com|outlook\.com)/i)
  errors << "#{relative}: internal or local endpoint" if source.match?(%r{https?://(?:localhost|127\.0\.0\.1|[^/\s]*\.internal)(?:[/:\s]|$)}i)
  errors << "#{relative}: credential-shaped value" if source.match?(/(?:gh[pousr]_[A-Za-z0-9]{20,}|AKIA[0-9A-Z]{16}|-----BEGIN [A-Z ]*PRIVATE KEY-----)/)
  errors << "#{relative}: roster or student identifier value" if source.match?(/(?:student[_ -]?id|roster[_ -]?id)\s*[:=]\s*[A-Za-z0-9-]+/i)

  source.scan(/\[[^\]]+\]\(([^)]+)\)/).flatten.each do |target|
    next if target.match?(%r{^(?:https?://|mailto:|#)})
    clean = target.split("#", 2).first
    next if clean.empty?
    resolved = Pathname.new(path).dirname.join(clean).cleanpath
    errors << "#{relative}: broken relative link #{target}" unless resolved.exist?
  end
end

if errors.any?
  warn errors.join("\n")
  exit 1
end

puts "Validated #{markdown.length} policy files at version #{version}."
