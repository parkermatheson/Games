def dice_roll(alpha)
  def die_roll
    x = (1..6).to_a
    x.sample
  end

  @beta = Array.new(alpha) { die_roll }
end

p 'Yahtzee'
p 'How to play: (instructions here)'
p 'roll the dice'
p dice_roll(5)
p 'pick which dice to keep'
# store player's choice
p 'must be an integer between 0 and 4 ...'
ch1 = gets.chomp!
ch2 = gets.chomp!
ch3 = gets.chomp!
ch4 = gets.chomp!
# ch5 = gets.chomp!
# find the specific dice values that the user picked
zeta1 = @beta[ch1.to_i]
zeta2 = @beta[ch2.to_i]
zeta3 = @beta[ch3.to_i]
zeta4 = @beta[ch4.to_i]
# zeta5 = @beta[ch5.to_i]
# p @beta[1]
# p @beta[2]
# p @beta[3]
# p @beta[4]
# store the values of the dice that the player picked
gamma = [zeta1, zeta2, zeta3, zeta4]#, zeta5
# calculate how many dice the user kept
p "you kept #{gamma}"
p 'roll again?'
# roll the dice that the player did not pick
delta = 5 - gamma.length
epsilon = dice_roll(delta)
p epsilon
# keep rolling until all the dice are selected
# roll a maximum of x times
# after the maximum number of rolls, any remaining dice are selected
p 'these are your dice'
p gamma.push(epsilon)
p 'what category do you want to apply this to?'
# get the user's category
# calculate the score for this turn
p 'ok. I have your score recorded.'
p "next player's turn"
p 'show their turn with all the things they do'
p 'your turn again'
p 'keep going until all categories on the scorecard are filled'
p 'total up the score'
p 'one of you wins the game!'
p 'want to play again?'
