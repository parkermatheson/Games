# One player tic tac toe, in the terminal, vs computer

# have a text based UI
# => welcome
 welome = 'welcome to tic tac toe. we are playing in binary. 1s and 0s.'

# => prompts
'it is your turn'
"it is the computer's turn"
'play again?'
'quit?'
'where will you place your mark?'


# => results
'YOU WIN'
'YOU LOOSE'

# initialize the board
# => could use an array
#   => one array [0, 1, 2, 3, 4, 5, 6, 7, 8]
#   => or three nested arrays within a container array
board = [[0, 1, 2],
         [0, 1, 2],
         [0, 1, 2]]

# keep track of player turn
#   store player choice in a variable
#   we could store every players choice in an array, to populate the board and keep track of their choices.
player = []

# keep track of computer turn
#   store computer choice in a variable
computer = []
# computer's turn could be random, or could have some strategy. random would be simplest to start with.

# some logic to determine the winner
  # horizontal rows
  # vertical columns
  # diagonals

# once a position on the board has been used, it cannot be used again.
# player can only mark unused spaces
# computer can only mark unused spaces
