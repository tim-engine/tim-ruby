Gem::Specification.new do |s|
  s.name        = "tim"
  s.version     = "0.2.6"
  s.summary     = "Tim Engine — a fast template engine native extension for Ruby"
  s.description = "Tim Engine is a high-performance DSL front-end engine compiled as a Ruby native extension."
  s.license     = "LGPL-3.0-or-later"
  s.authors     = ["OpenPeeps"]
  s.files       = Dir["lib/**/*.rb"] + Dir["lib/**/*.{bundle,so}"]
  s.require_paths = ["lib"]
  s.platform    = Gem::Platform::CURRENT
  s.required_ruby_version = ">= 3.0"
  s.metadata = {
    "source_code_uri" => "https://github.com/openpeeps/tim",
    "homepage_uri"    => "https://tim.openpeeps.dev"
  }
end
