require 'sinatra/base'

module Game
    class RPS_app < Sinatra::Application

        get '/throw/:type' do
            computer_move = ["rock", "paper", "scissor"].sample
            
            if params[:type] == "rock"
                if computer_move == "paper"
                    "too bad for you, computer wins this round"
                elsif computer_move == "scissor"
                     "congrats you beat the computer"
                else
                      "it's a tie"
                end
            elsif params[:type] == "paper"
                if computer_move == "scissors"
                    "too bad for you, computer wins this round"
                elsif computer_move == "rock"
                 "congrats you beat the computer"
                else 
                 "it's a tie"
                end
            elsif params[:type] == "scissors"
                 if computer_move == "rock"
                     "too bad for you, computer wins this round"
                elsif computer_move == "paper"
                    "congrats you beat the computer"
                else
                    "it's a tie! would you like to try again?"
                end
            else
                "not a valid answer"
            end

        end

    end


end