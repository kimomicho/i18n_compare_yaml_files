# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'i18n_compare_yaml_files/version'

Gem::Specification.new do |spec|
  spec.name          = "i18n_compare_yaml_files"
  spec.version       = I18nCompareYamlFiles::VERSION
  spec.authors       = ["Kamal Micheal"]
  spec.email         = ["kimomicho@hotmail.com"]

  spec.summary       = "This gem is used to compare I18n yaml files and return differences."
  spec.homepage      = "https://github.com/kimomicho/i18n_compare_yaml_files"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
