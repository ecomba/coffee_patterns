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

def spec_options(pattern, spec)
  spec.pattern = FileList["#{pattern}/spec/**/*_spec.rb"]
  path = File.expand_path(File.dirname(__FILE__) + "/#{pattern}/spec")
  path2 = File.expand_path(File.dirname(__FILE__) + "/src/lib")
  spec.rspec_opts = "-f d -c -I #{path} -I #{path2}"
end

def dirs(action)
  Dir.glob('*/').each do |dir|
    action.call(dir.gsub('/',''))
  end
end

namespace :patterns do
  dirs  lambda { |pattern| RSpec::Core::RakeTask.new(pattern) { |spec| spec_options(pattern, spec) }}
end

task :spec do
  dirs lambda { |pattern| Rake::Task["patterns:#{pattern}"].invoke }
end

task :default => :spec
