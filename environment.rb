require "rubygems"
require "bundler/setup"
require "ostruct"
require "slim"
require "sinatra" unless defined?(Sinatra)

configure do 
  SiteConfig = OpenStruct.new(
    :title => 'Set title here',
    :author => 'Set name here',
    :url_base => 'http://localhost:3000/'
  )

  #load models
  $LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib/models")
  Dir.glob("#{File.dirname(__FILE__)}/lib/models/*.rb") { |models| require File.basename(models, '.*')}

  # load libraries
  $LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")
  Dir.glob("#{File.dirname(__FILE__)}/lib/*.rb") { |lib| require File.basename(lib, '.*')}
end
