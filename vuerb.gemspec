lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "vuerb/version"

Gem::Specification.new do |spec|
  spec.name          = "vuerb"
  spec.version       = Vuerb::VERSION
  spec.authors       = ["lunarfyre7"]
  spec.email         = ["gvandereay@gmail.com"]

  spec.summary       = %q{Vue + Opal, code Vue components in Ruby!}
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/lunarfyre7/vuerb"
  spec.license       = "MIT"

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/lunarfyre7/vuerb"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'opal', '~> 0.11'

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "minitest", "~> 5.0"
end
