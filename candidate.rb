require 'sinatra/base'
require 'sinatra/reloader'
# require 'sinatra/activerecord'
# require 'sinatra/activerecord/rake'

class Candidate < Sinatra::Base
  get '/' do
    haml :index
  end

  get '/theme1' do
    haml :'clark/clark'
  end

  get '/theme1/news/:id' do
    haml :"clark/news/#{params[:id]}"
  end

  get '/program' do
    haml :program
  end

  get '/events' do
    haml :events
  end

  get '/qa' do
    haml :qa
  end

  get '/contact' do
    haml :contact
  end
end
