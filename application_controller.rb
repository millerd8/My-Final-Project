require 'bundler'
Bundler.require
require_relative "models/pig_latinize.rb"
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/result' do
    @name=params[:name]
    @pigname=to_pig_latin(@name)[0]
    @image=to_pig_latin(@name)[1]
    erb :results
  end

end
