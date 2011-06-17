require 'rubygems'
require 'rake'
require 'rake/clean'
require 'rake/gempackagetask'
require 'rake/rdoctask'
require 'rake/testtask'

spec = Gem::Specification.new do |s|
  s.name = "watir_helper"
  s.version = "0.1.2"
  s.author = "Ankur Gera"
  s.email = "ankurgera@gmail.com"
  s.platform = Gem::Platform::RUBY
  s.summary = "A utility for making Automation Testing faster, simpler and easier."
  s.files = FileList["{lib}/**/*"].to_a
  s.require_path = "lib"
  s.test_files = FileList["{test}/**/*.rb"].to_a
  s.has_rdoc = true
  s.extra_rdoc_files = ["README"]
end

Rake::GemPackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
  pkg.need_tar = true
  pkg.need_zip = true
end

