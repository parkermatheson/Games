@computer = { "A1" => "~", "A2" => "~", "A3" => "~", "A4" => "~", "A5" => "~", "A6" => "~", "A7" => "~", "A8" => "~", "A9" => "~", "A10" => "~", "B1" => "~", "B2" => "~", "B3" => "~", "B4" => "~", "B5" => "~", "B6" => "~", "B7" => "~", "B8" => "~", "B9" => "~", "B10" => "~", "C1" => "~", "C2" => "~", "C3" => "~", "C4" => "~", "C5" => "~", "C6" => "~", "C7" => "~", "C8" => "~", "C9" => "~", "C10" => "~", "D1" => "~", "D2" => "~", "D3" => "~", "D4" => "~", "D5" => "~", "D6" => "~", "D7" => "~", "D8" => "~", "D9" => "~", "D10" => "~", "E1" => "~", "E2" => "~", "E3" => "~", "E4" => "~", "E5" => "~", "E6" => "~", "E7" => "~", "E8" => "~", "E9" => "~", "E10" => "~","F1" => "~", "F2" => "~", "F3" => "~", "F4" => "~", "F5" => "~", "F6" => "~", "F7" => "~", "F8" => "~", "F9" => "~", "F10" => "~", "G1" => "~", "G2" => "~", "G3" => "~", "G4" => "~", "G5" => "~", "G6" => "~", "G" => "~", "G8" => "~", "G9" => "~", "G10" => "~", "H1" => "~", "H2" => "~", "H3" => "~", "H4" => "~", "H5" => "~", "H6" => "~", "H7" => "~", "H8" => "~", "H9" => "~", "H10" => "~", "I1" => "~", "I2" => "~", "I3" => "~", "I4" => "~", "I5" => "~", "I6" => "~", "I7" => "~", "I8" => "~", "I9" => "~", "I10" => "~", "J1" => "~", "J2" => "~", "J3" => "~", "J4" => "~", "J5" => "~", "J6" => "~", "J7" => "~", "J8" => "~", "J9" => "~", "J10" => "~"}
@player_board = { "A1" => "~", "A2" => "~", "A3" => "~", "A4" => "~", "A5" => "~", "A6" => "~", "A7" => "~", "A8" => "~", "A9" => "~", "A10" => "~", "B1" => "~", "B2" => "~", "B3" => "~", "B4" => "~", "B5" => "~", "B6" => "~", "B7" => "~", "B8" => "~", "B9" => "~", "B10" => "~", "C1" => "~", "C2" => "~", "C3" => "~", "C4" => "~", "C5" => "~", "C6" => "~", "C7" => "~", "C8" => "~", "C9" => "~", "C10" => "~", "D1" => "~", "D2" => "~", "D3" => "~", "D4" => "~", "D5" => "~", "D6" => "~", "D7" => "~", "D8" => "~", "D9" => "~", "D10" => "~", "E1" => "~", "E2" => "~", "E3" => "~", "E4" => "~", "E5" => "~", "E6" => "~", "E7" => "~", "E8" => "~", "E9" => "~", "E10" => "~","F1" => "~", "F2" => "~", "F3" => "~", "F4" => "~", "F5" => "~", "F6" => "~", "F7" => "~", "F8" => "~", "F9" => "~", "F10" => "~", "G1" => "~", "G2" => "~", "G3" => "~", "G4" => "~", "G5" => "~", "G6" => "~", "G" => "~", "G8" => "~", "G9" => "~", "G10" => "~", "H1" => "~", "H2" => "~", "H3" => "~", "H4" => "~", "H5" => "~", "H6" => "~", "H7" => "~", "H8" => "~", "H9" => "~", "H10" => "~", "I1" => "~", "I2" => "~", "I3" => "~", "I4" => "~", "I5" => "~", "I6" => "~", "I7" => "~", "I8" => "~", "I9" => "~", "I10" => "~", "J1" => "~", "J2" => "~", "J3" => "~", "J4" => "~", "J5" => "~", "J6" => "~", "J7" => "~", "J8" => "~", "J9" => "~", "J10" => "~"}



def input
  coordinates = gets.chomp.upcase
  if coordinates =~ /\A[A-J][0-9]\z|\A[A-J]10\z/
    coordinates
  else
    puts "Wrong input"
    puts "Please write input in the form of LetterNumber"
    puts "Use A-J and 1-10"
    input
  end
end

def show_board grid
  puts "  # | A | B | C | D | E | F | G | H | I | J "
  letters = %w(A B C D E F G H I J)
  counter = 1
    letters.each do |letter|
      puts "#{" " if counter < 10} #{counter} | #{grid["#{letter}1"]} | #{grid["#{letter}2"]} | #{grid["#{letter}3"]} | #{grid["#{letter}4"]} | #{grid["#{letter}5"]} | #{grid["#{letter}6"]} | #{grid["#{letter}7"]} | #{grid["#{letter}8"]} | #{grid["#{letter}9"]} | #{grid["#{letter}10"]} "
      counter += 1
    end
end

def hit? which_board, coordinates
  shot(which_board, coordinates) 
  true if which_board["#{coordinates}"] =~ /[ABCDS]/
end

def shot which_board, coordinates
  which_board["#{coordinates}"] =~ /[ABCDS]/ ? which_board["#{coordinates}"] = "X" : which_board["#{coordinates}"] = "O"
end





def cpu_turn
  narrator("17")
  ************************
  player_turn
end

def player_turn
  narrator("18")
  ************************
  cpu_turn
end






# UI PROMPTS
# (I know this sucks, but it's functional. refine later.)
@user_country = "United States"
@cpu_country = "Canada"
def narrator(script_line_num)
  prompt = {
    '1' => "Welcome to BattleShip!",
    '2' => "You know how to play, right?",
    '3' => "pick your country",
    '4' => "pick your opponent's country",
    '5' => "here is the board",
    '6' => "let's place your ships",
    '7' => "ship?",
    '8' => "locations?",
    '9' => "your opponent #{@cpu_country} has set up their board",
    '10' => "#{@user_country} and #{@cpu_country} are at war!",
    '11' => "here is the board",
    '12' => "it is your turn",
    '13' => "where will you fire?",
    '14' => "hit",
    '15' => "miss",
    '16' => "here is the board",
    '17' => "it is #{@cpu_country}'s turn",
    '18' => "it is #{@user_country}'s turn",
    '19' => "they fire",
    '20' => "hit",
    '21' => "miss",
    '22' => "it is your turn",
    '23' => "Somebody wins",
    '24' => "game over",
    '25' => "do you want to play again?"
  }
  p prompt[script_line_num]
end

narrator('10')

def user_input_types
  aim_location
    board_setup
    fire_location
  ship_name
  country_name
  quit
  play_again
end