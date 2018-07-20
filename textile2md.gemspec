
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "textile2md/version"

Gem::Specification.new do |spec|
  spec.name          = "textile2md"
  spec.version       = Textile2md::VERSION
  spec.authors       = ["Yumainaura"]
  spec.email         = ["yuma.inaura@gmail.com"]

  spec.summary       = %q{Convert textile to markdown.}
  spec.description   = %q{Convert textile to markdown. just only do it.}
  spec.homepage      = "https://github.com/YumaInaura/textile2md"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "RedCloth"
  spec.add_dependency "reverse_markdown"
  spec.add_dependency "webread"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", "~> 0"
end
