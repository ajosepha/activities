require 'sinatra/base'

module Game
    class RPS_App < Sinatra::Application
        get '/throw' do
            "hello"
    end

end