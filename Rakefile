require 'rubygems'
require 'bundler'
require 'rake'

require 'rspec/core'
require 'rspec/core/rake_task'

begin
  Bundler.setup(:default)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

def spec(pattern, spec)
  spec.pattern = FileList["#{pattern}/spec/**/*_spec.rb"]
  path = File.expand_path(File.dirname(__FILE__) + "/#{pattern}/spec")
  spec.rspec_opts = "-f d -c -I #{path}"
end

namespace :patterns do
  [ :decorator ].each do |pattern|
    RSpec::Core::RakeTask.new(pattern) { |spec| spec(pattern, spec) }
  end
end

task :spec do
  Rake::Task['patterns:decorator'].invoke
end

task :default => :spec
