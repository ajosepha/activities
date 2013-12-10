class Things
    attr_accessor :rock, :paper, :scissor

    @@user_score = []
    @@cpu_score =[]

    def initialize
        @array = ["rock", "paper", "scissor"]
        @moves = []
        play_game
    end

    def play_game
        puts "let's play rock paper scissor against a computer(rock/paper/scissor)"
        @user = gets.chomp.downcase
        @moves << @user
        if @user == "rock"
            play_rock
        elsif @user == "scissor"
            play_scissor
        elsif @user == "paper"
            play_paper
        end
    end

  def computer_move
    @array.sample
  end

  def play_rock
       computer_move
        if computer_move == "paper"
            puts "too bad for you, computer wins this round"
            @@cpu_score << self
        elsif computer_move == "scissor"
          puts "congrats you beat the computer"
          @@move_score << self
        else
          puts "it's a tie"
        end
    end



  def play_paper
   computer_move
    if computer_move == "scissors"
        puts "too bad for you, computer wins this round"
        @@cpu_score << self
    elsif computer_move == "rock"
      puts "congrats you beat the computer"
      @@move_score << self
    else 
      puts "it's a tie"
    end
  end

   def play_scissor
    computer_move
    if computer_move == "rock"
        puts "too bad for you, computer wins this round"
        @@cpu_score << self
    elsif computer_move == "paper"
      puts "congrats you beat the computer"
      @@move_score << self
    else
      puts "it's a tie! would you like to try again?"
    end
  end

end

Things.new