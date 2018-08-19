require 'sinatra/base'

class App < Sinatra::Base
  get '/newteam' do
    erb :newteam
  end

  post '/newteam' do
    @team_name = params[:name]
    @team_array = [params[:coach], params[:pg], params[:sg], params[:pf], params[:sf], params[:c]]

    erb :team
  end


end
