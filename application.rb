require "rubygems"
require "bundler/setup"
require "sinatra"

# load environment
require File.join(File.dirname(__FILE__), 'environment')

# load view folder
configure do 
  set :views, "#{File.dirname(__FILE__)}/views"
end

error do 
  e = request.env['sinatra.error']
  Kernel.puts e.backtrace.join("\n")
  'Application Error'
end

helpers do 
  # add your helpers here
end

# start page 
get '/' do 
  slim :index
end
