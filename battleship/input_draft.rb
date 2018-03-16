# The computer picks a random coordinate
def comp_input
  letter = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J']
  number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  p letter.sample + number.sample.to_s
end

comp_input

def user_input_types
  aim_location
    board_setup
    fire_location
  ship_name
  country_name
  quit
  play_again
end