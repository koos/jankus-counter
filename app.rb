require 'sinatra'
require 'sinatra/activerecord'

set :database_file, 'config/database.yml'

class Counter < ActiveRecord::Base

  def increment
    self.count = self.count.next
    self.save
  end

end

class CounterApp < Sinatra::Base

  before do
    @counter = Counter.last || Counter.create
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
