

letter_values = {"A": 1,
"B": 3,"C": 3,"D": 2,
"E": 1,"F": 4,"G": 2,
"H": 4,"I": 1,"J": 1,
"K": 5, "L": 1,"M": 3,
"N": 1,"O": 1,"P": 3,
"Q": 10,"R": 1,"S": 1,
"T": 1,"U": 1,"V": 4,
"W": 4,"X": 8,"Y": 4,
"Z": 10,"#": 0}



# MAKES WORD INTO SCORE -works

def main():
    yes = input("Would you like to play? (Y or N):")
    while yes != "N":
        yes = input("Input word? (Y or N):")
        if yes == "N":
            break
        word = str(input("Word:"))
        def findpoints():
            b = 0
            for letter in word:
                b += letter_values[letter]
            print("Score:", b)
            return sum
        findpoints()



# ADDS SCORE KINDA
def main2():
    yes = input("Would you like to play? (Y or N):")
    while yes != "N":
        yes = input("Input word? (Y or N):")
        if yes == "N":
            break
        word = str(input("Word:"))
        leng = len(word)
        def findpoints():
            b = 0
            for letter in word:
                b += letter_values[letter]
            print("Score:", b)
            return b
        def addpoints():
            secondword = str(input("Another word:"))
            c = int(findpoints())
            if secondword[0] in word:
                for letter in secondword:
                    c += letter_values[letter]
                print("New Score:", c)
            return c
        findpoints()
        addpoints()

# DOESNT WORK TRIED TO ADD MORE WORDS

def main2():
    yes = input("Would you like to play? (Y or N):")
    while yes != "N":
        yes = input("Input word? (Y or N):")
        if yes == "N":
            break
        word = str(input("Word:"))
        leng = len(word)
        def findpoints():
            b = 0
            for letter in word:
                b += letter_values[letter]
            print("Score:", b)
            return b
        def addpoints():
            secondword = str(input("Another word:"))
            c = int(findpoints())
            if secondword[0] in word:
                for letter in secondword:
                    c += letter_values[letter]
                print("New Score:", c)
            return c
        def addpoints2():
            thirdword = str(input("Another word:"))
            d = int(addpoints())
            if thirdword[0] in word:
                for letter in thirdword:
                    d += letter_values[letter]
                print("New Score:", d)
            return d
        findpoints()
        addpoints()
        addpoints2()







if __name__ == "__main__":
    main()




# https://codereview.stackexchange.com/questions/232083/simple-scrabble-game-scorer
def main1():
    letter_val = {" ": 0, "a": 1, "b": 3, "c": 3, "d": 2, "e": 1, "f": 4, "g": 2, "h": 4, "i": 1, "j": 8, "k": 5, "l": 1, "m": 3, "n": 1, "o": 1, "p": 3, "q": 10, "r": 1, "s": 1, "t": 1, "u": 1, "v": 4, "w": 4, "x": 8, "y": 4, "z": 10}
    players = []
    """ Function to add as many players as there are in the game (uses scrabble rules for limit) """
    def add_players():
        while True:
            while len(players) < 4:
                pla = input("Enter Player Names (can have up to 4) >>> ")
                if pla:
                    if pla not in (a for i in players for a in i):
                        if len(players) < 4:
                            players.append([pla, 0])
                            print("Player {} added".format(pla))
                        else:
                            return
                    else:
                        print("Name already in players' list")
                else:
                    return
            else:
                return

    def home(undo_ind=False):
        option = input('Would you like to [A]dd a score, [V]iew scores, [U]ndo the last change, or [End] the game? > ')

        class Score:
            def __init__(self):
                global temp_v, temp_p
                player = temp_p = input("Enter player to score>>> ")
                if player in (a for i in players for a in i):
                    try:
                        word = input("Enter word to score>>> ")
                        value = temp_v = sum(letter_val[i.lower()] for i in word)
                    except KeyError:
                        print("Word must consist of letters only.")
                        Score()
                    for i in players:
                        if i[0] == player:
                            i[1] += value
                else:
                    print("Player entered is not in player list.")
                home()

            @staticmethod
            def undo():
                try:
                    for i in players:
                        if i[0] == temp_p:
                            i[1] -= temp_v
                            home(True)
                except NameError:
                    print("No changes have been made.")
                    home()

            @staticmethod
            def view_scores():
                for i in players:
                    print("Player %s has a score of %d" % (i[0], i[1]))
                home(undo_ind)
        if option.lower() == "a":
            Score()
        elif option.lower() == "v":
            Score.view_scores()
        elif option.lower() == "u" and undo_ind is False:
            Score.undo()
        elif option.lower() == "u" and undo_ind is True:
            print("No changes have been made.")
            home(True)
        elif option.lower() == "end":
            print("Final scores are:")
            for i in players:
                print("Player {} has a final score of {}.".format(i[0], i[1]))
        else:
            print("That is not a valid option.")
            home(undo_ind)
    add_players()
    home()

