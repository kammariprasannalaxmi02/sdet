player1 = input("Enter 1st player name: ")
player2 = input("Enter 2nd player name: ")

def inputcheck(input_value):
    if(input_value not in ['rock','scissors','paper']):
        return print("Invalid input..! Please enter either rock, paper or scissors & try again...!")
    else:
        print("choosed weapon is {}".format(input_value))

Player1_input = input('{} Enter your choosen weapon: '.format(player1)).lower()
inputcheck(Player1_input)

Player2_input = input('{} Enter your choosen weapon: '.format(player2)).lower()
inputcheck(Player2_input)

def game(Player1_input, Player2_input):
    if(Player1_input == 'rock' and Player2_input == 'scissors' or Player1_input == 'scissors' and Player2_input == 'paper' or Player1_input == 'paper' and Player2_input == 'rock'):
        print("{} won over {}".format(player1, player2))
    elif(Player2_input == 'rock' and Player1_input == 'scissors' or Player2_input == 'scissors' and Player1_input == 'paper' or Player2_input == 'paper' and Player1_input == 'rock'):
        print("{} won over {}".format(player2, player1))
    elif(Player1_input == Player2_input):
        print("Match ends in Tie")
    else:
        print("Invalid Invalid input..! Please enter either rock, paper or scissors & Start the game again...!")


game(Player1_input, Player2_input)


retry_Game = input("would you like to play another game?..Y/N?: ")

if(retry_Game == "Y"):
    Player1_input = input('{} Enter your choosen weapon: '.format(player1)).lower()
    inputcheck(Player1_input)
    Player2_input = input('{} Enter your choosen weapon: '.format(player2)).lower()
    inputcheck(Player2_input)
    game(Player1_input, Player2_input)
elif(retry_Game == "N"):
    print("Thanks Game Ends..!")
    raise SystemExit
else:
    print("Please enter valid input either 'Y'or 'N'..try again!")
    raise SystemExit
