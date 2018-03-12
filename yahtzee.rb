def dice_roll(alpha)
  def die_roll
    x = (1..6).to_a
    x.sample
  end

  @beta = Array.new(alpha) { die_roll }
end

def roll_again
  again = ''
  if @turn_roll_count != 0
    p 'roll again?'
    if again.upcase != ('Y' || 'N')
      p "press Y to roll or N to stop rolling => #{again = gets.chomp!}"
      p "again = #{again}"
    end
  end
  if again.upcase == 'N'
    @turn_roll_count = 3
    
  elsif again.upcase == 'Y'
    p "Let's roll again"
  else
    p "I'm sorry, I don't understand."
  end
end

p 'Yahtzee'
p 'How to play: (instructions here)'
p 'to quit at any time, press CTRL + C'
# roll a maximum of 3 times per turn
@turn_roll_count = 0
while @turn_roll_count < 3
  roll_again
  p 'roll the dice'
  my_roll = dice_roll(5)
  p "my_roll = #{my_roll}"
  @turn_roll_count += 1
  p 'pick which dice to keep'
  # store player's choice
  p 'type the dice you want separated by a comma with no spaces'
  # do this in a loop, depending on how many dice the player picked.
  # probably a good idea to validate the user's choice, so they can't cheat.
  # later, allow for more flexible user-friendly input.
  my_pick = gets.chomp!
  p "my_pick = #{my_pick}"
  gamma = my_pick.split(",").map(&:to_i)
  p "gamma = #{gamma}"
  
  # returns an array of any items that my_pick and my_roll have in common, thus validating player's input and storing the dice the player selected.
  p "gamma & my_roll = #{gamma & my_roll}"

  # ch1 = gets.chomp!
  # ch2 = gets.chomp!
  # ch3 = gets.chomp!
  # ch4 = gets.chomp!
  # ch5 = gets.chomp!
  # find the specific dice values that the user picked
  # zeta1 = @beta[ch1.to_i]
  # zeta2 = @beta[ch2.to_i]
  # zeta3 = @beta[ch3.to_i]
  # zeta4 = @beta[ch4.to_i]
  # zeta5 = @beta[ch5.to_i]
  # p @beta[1]
  # p @beta[2]
  # p @beta[3]
  # p @beta[4]
  # store the values of the dice that the player picked
  # gamma = [zeta1, zeta2, zeta3, zeta4]#, zeta5
  # calculate how many dice the user kept
  # p "you kept #{gamma}"

  # roll the dice that the player did not pick
  delta = 5 - gamma.length
  epsilon = dice_roll(delta)
  p epsilon
  # keep rolling until all the dice are selected
  break if @turn_roll_count >= 3
end
# after the maximum number of rolls, any remaining dice are selected
p 'these are your dice'
p gamma.push(epsilon)
p 'what category do you want to apply this to?'
# get the user's category
# calculate the score for this turn
p 'ok. I have your score recorded.'
@turn_roll_count = 0
p "next player's turn"
p 'show their turn with all the things they do'
p 'your turn again'
p 'keep going until all categories on the scorecard are filled'
p 'total up the score'
p 'one of you wins the game!'
p 'want to play again?'
