# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gemnew_native/version'

Gem::Specification.new do |spec|
  spec.name          = "gemnew_native"
  spec.version       = GemnewNative::VERSION
  spec.authors       = ["Benjamin J. Anderson"]
  spec.email         = ["andeb2804@gmail.com"]
  spec.summary       = %q{Generate new native gem projects with tests.}
  spec.description   = %q{empty for now}
  spec.homepage      = "https://github.com/vandise"
  spec.license       = "MIT"

  spec.files         = [
                        "bin/gemnew_native",
                        "lib/gemnew_native.rb",
                        "lib/gemnew_native/version.rb",
                        "lib/gemnew_native/project.rb",
                        "template/Rakefile",
                        "template/ext/app/app.c",
                        "template/ext/app/app.h",
                        "template/ext/app/extconf.rb",
                        "template/test/app_test.rb",
                        "template/test/test_helper.rb",
                        "template/Gemfile",
                        "template/README.md",
                        "template/Rakefile.md",
                        "Rakefile",
                        "Gemfile",
                        "README.md",
                        "gemnew_native.gemspec"

                        ]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end