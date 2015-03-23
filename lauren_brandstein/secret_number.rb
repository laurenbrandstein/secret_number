###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret
# number game. In this game players have three tries to guess a secret number
# between 1 and 10.
#
# Here are some guidelines to building your game:
#
#   Intros

#   - Welcome the player to your game. Let them know who created the game.
# @TODO: Make this ascii art/graffiti!
  puts "~*~ Welcome to Secret Number, a number guessing game by L-Beezee Industries! ~*~\n\n"

#   - Ask for the player's name then personally greet them by printing to the
#     screen, "Hi player_name!"
  puts "GAME MASTER: What should I call you, Player 1?\n\n"
  player_name = gets.strip
  puts "\nGAME MASTER: Hi #{player_name}!\n\n"

  def secret_num_game(player_name)

    # @TODO: Ask the player to choose to play or decline the Secret Number challenge.
    # puts "GAME MASTER: Would you like to play Secret Number? (y/n)"
    # answer = gets.strip
    # if answer == 'y'
    # elseif answer == 'n'
    #   puts "GAME MASTER: It's good to know your own limits. Come back when you're ready for my challenge, #{player_name}!"
    # 
    # else
    #   puts "GAME MASTER: Please answer 'y' for 'yes' or 'n' for 'no.' So, #{player_name}, would you like to play Secret Number? (y/n)"
    # end

    #   - Any good game will communicate the rules. Let the player know they must
    #     guess a number between 1 and 10 and that they only have 3 tries to do so.
    puts "GAME MASTER: Here are the rules: Guess any number between 1 and 10. You have 3 guesses.\n\n"
    puts "Guess correctly, and bask in the warm glow of victory.\n\nGuess wrong three times, and a baby unicorn will die for your failure!\n\n"
    puts "MWAAAHAAAHAAAHAAAHAAAAAAA!!1!!!!\n\n"

    #   Functionality:
    #     - Manually specify the secret number in a variable. Choose a random 
    #       number between 1 and 10.
    # @TODO: Make this a random integer.
    secret_num = 7
    guesses_left = 3
    guess_str = "guesses"
    
    while guesses_left > 0 do

      #     - Ask the user for their guess.
      # @TODO: Interpolate an ordinal here, like: "What is your first guess?"
      puts "GAME MASTER: What is your guess?\n\n"
      guessed_num = gets.strip.to_i

      # Decrement the counter for guesses remaining  
      guesses_left -= 1
      if guesses_left == 1 then guess_str = "guess" end

      # @TODO: Put all this evaluation stuff in an if/elseif or switch case or something?

      #     - Verify if they were correct. If the player guesses correctly they win
      #       the game, they should be congratulated and the game should end.
      if guessed_num == secret_num
        puts "GAME MASTER: WOW! That was a great guess!\n\nCongratulations #{player_name}, you win!\n\n"
        break
      end

      # If player has any turns left, continue with setup for next turn.
      if guesses_left > 0 

        #     - If they guess incorrectly, give the player some direction. If they
        #       guess too high let them know, if they guess too low, let them know.
        if guessed_num < secret_num then puts "\nGAME MASTER: Good guess, but try a little higher...\n\n" end
        if guessed_num > secret_num then puts "\nGAME MASTER: Guess guess, but try a little lower...\n\n" end

        #     - Don't forget to let your players know how many guesses they have left.
        #       Your game should say something like:
        #         "You have X guesses before the game is over enter a another number"
        # Make this singular "guess" if guesses_left is 1.
        puts "GAME MASTER: You have #{guesses_left} #{guess_str} left.\n\nGuess another number!\n\n"

      end

      if guesses_left == 0

        #     - If they don't guess correctly after 3 tries, display that the player
        #       lost and that the game is over. Be nice and let them know what the
        #       `secret_number` was.
        puts "\nGAME MASTER: It seems that you are out of guesses, #{player_name}.\n\nThe secret number was #{secret_num}.\n\n"
        puts "I'll be sacrificing that baby unicorn now.\n\nBut don't feel bad, you've just given me a little more life force!\n\n"

      end

    end

  end
  # secret_num_game(player_name)

  # Start the game!
  secret_num_game(player_name)

#
###############################################################################