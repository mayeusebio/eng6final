# eng6finalProj
## Intro
Final Project for ENG 006 at UC Davis. Card game implementation using MATLAB, in our case, Blackjack. 

## Basic Blackjack Explanation
### Goal: 
Beat the dealer's hand without going over 21
### Card Values:
Cards 2 - 10 worth their number value

Face cards are worth 10 with the exception of the Ace, which can equal 10 or 1.

1. Players make bets
2. Dealer deals two cards to each player and themselves, one dealer card is face up, player hands are hidden
3. Players have four choices: stand, hit, double down, or split
4. Dealer acts last and *must* hit on 16 or less and stand on 17 through 21
5. Player wins if their hand is higher than dealer's or if they have 21 or less when the dealer busts

### Glossary
**Bust:** Card's value exceeds 21

**Stand:** Keep your cards and end your turn

**Hit:** Ask for another card

**Double Down:** Doubling your bet and recieving another card, only allowed on the first move

**Split:** Having two of the same card and creating 2 hands, only allowed on the first move

**Blackjack:** Hand equals 21, recieves 1.5 amount of bet

## Implementation
