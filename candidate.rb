require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/activerecord'
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

  get '/theme2' do
    haml :'jony/jony'
  end

  get '/theme2/work_details' do
    haml :'jony/work_details'
  end

  get '/theme2/contact' do
    haml :'jony/contact'
  end

  get '/theme3' do
    haml :'personal/personal'
  end

  get '/theme3/bio' do
    haml :'personal/bio'
  end

  get '/theme3/contact' do
    haml :'personal/contact'
  end

  get '/theme3/news' do
    haml :'personal/news'
  end

  get '/theme3/program' do
    haml :'personal/program'
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
