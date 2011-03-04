require 'rubygems'
require 'bundler/setup'
require 'rspec/core/rake_task'
require 'sinatra/activerecord/rake'

task :default => :test
task :test => :spec

if !defined?(RSpec)
  puts "spec targets require RSpec"
else
  desc "Run all examples"
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.pattern = 'spec/**/*.rb'
    t.rspec_opts = ['-cfs']
  end
end

task :environment do
  require File.join(File.dirname(__FILE__), 'environment')
end
