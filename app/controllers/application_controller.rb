require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    # get '/teams' do
    #   erb :team
    # end

    post '/teams' do
      @team = params[:team]
      # redirect "/teams"
      erb :team
    end

end
