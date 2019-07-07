require 'sinatra'
require 'sinatra/flash'
require 'sinatra/activerecord'
require "sinatra/reloader" if development? || test?
require "pry" if development? || test?
#require 'rb-readline'

set :bind, '0.0.0.0'  # bind to all interfaces

configure do
  set :views, 'app/views'
end

enable :sessions

Dir[File.join(File.dirname(__FILE__), 'app', '**', '*.rb')].each do |file|
  require file
  also_reload file
end
