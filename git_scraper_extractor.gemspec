# frozen_string_literal: true

require_relative "lib/git_scraper_extractor/version"

Gem::Specification.new do |spec|
  spec.name          = "git_scraper_extractor"
  spec.version       = GitScraperExtractor::VERSION
  spec.authors       = ["Drew Breunig"]
  spec.email         = ["dbreunig@gmail.com"]

  spec.summary       = "Extract individual files out of git scraping repos."
  spec.description   = "Extract versions of specified files from git scraping repositories into individual files."
  spec.homepage      = "http://drewb.org/"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Dependencies
  spec.add_dependency("rugged", "~> 1.1.0")
  spec.add_dependency("tty-prompt", "~> 0.23.0")

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
