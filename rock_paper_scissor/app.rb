require 'sinatra/base'

module Game
    class RPS_app < Sinatra::Application

        get '/throw/:type' do
            computer_move = ["rock", "paper", "scissor"].sample

            
            if params[:type] == "rock"
                if computer_move == "paper"
                    "Computer move is #{computer_move}. too bad for you, computer wins this round"
                elsif computer_move == "scissor"
                     "Computer move is #{computer_move}. congrats you beat the computer"
                else
                      "Computer move is #{computer_move}. it's a tie"
                end
            elsif params[:type] == "paper"
                if computer_move == "scissors"
                    "Computer move is #{computer_move}. too bad for you, computer wins this round"
                elsif computer_move == "rock"
                    "Computer move is #{computer_move}. congrats you beat the computer"
                else 
                    "Computer move is #{computer_move}. it's a tie"
                end
            elsif params[:type] == "scissors"
                 if computer_move == "rock"
                     "Computer move is #{computer_move}. too bad for you, computer wins this round"
                elsif computer_move == "paper"
                    "Computer move is #{computer_move}. congrats you beat the computer"
                else
                    "Computer move is #{computer_move}. it's a tie! would you like to try again?"
                end
            else
                "not a valid answer"
            end

        end

    end


end