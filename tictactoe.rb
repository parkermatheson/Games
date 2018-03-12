# One player tic tac toe, in the terminal, vs computer

# have a text based UI
# => welcome
def welcome
 puts 'welcome to tic tac toe. we are playing in binary. 1s vs 0s.'
end

# => prompts (could be stored in a hash)
prompts = ['it is your turn',
           "it is the computer's turn",
           'play again?',
           'quit?',
           'where will you place your mark?',
           'YOU WIN',
           'YOU LOOSE'
          ]

# => results

# initialize the board
# => could use an array
#   => one array [0, 1, 2, 3, 4, 5, 6, 7, 8]
#   => or three nested arrays within a container array
board = [[0, 1, 2],
         [0, 1, 2],
         [0, 1, 2]]

class Turn
  p 'Turn Class'
  # get input
  # referee
  # store validated input
end

# keep track of player turn
#   store player choice in a variable
player = []

class MyTurn < Turn
  p 'MyTurn Class'
  # get input
end

# keep track of computer turn
#   store computer choice in a variable
computer = []

# computer's turn could be random, or could have some strategy. random would be simplest to start with.
class CpuTurn < Turn
  p 'CpuTurn Class'
  # generate input
end

# some logic to determine the winner
  # horizontal rows
  # vertical columns
  # diagonals
def win?
end

# once a position on the board has been used, it cannot be used again.
# player can only mark unused spaces
# computer can only mark unused spaces
def referee
end

def turn
  p 'turn'
  # show board
  # get input
  # update board
  # win?
end

def quit
  p 'quit'
end

def game
  p 'game'
  welcome
  turn
  quit
end

game
