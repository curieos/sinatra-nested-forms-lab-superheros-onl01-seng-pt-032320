# frozen_string_literal: true

require 'sinatra/base'

class App < Sinatra::Base
  set :views, proc { File.join(root, '../views/') }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @team = params[:team]

    erb :team
  end
end
