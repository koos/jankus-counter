require "sinatra"
require "./lib/counter"
require './database_connection_setup'

class CounterApp < Sinatra::Base

  before do
    @counter = Counter.instance
  end

  get '/' do
    @counter.increment
    haml :index
  end

  post '/increment' do
    @counter.increment
    redirect '/'
  end
end
