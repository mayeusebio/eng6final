# Blackjack Algorithm

** Note: This is the basic version of our blackjack game. Implementation of doubling down, splitting, and other features will be crossed out for now** 

## Before Game
1. Choose number of players (1 -2)
2. Players make bets
    - *Decide on betting system, a maximum or minimum bet?*

## Game Start
1. Deck of cards created & shuffled
    - Each card given a numerical value, 1 - 52 even face cards
    - Struct property of Dealer object
    - Shuffle is a method of Dealer
2. Each player dealt 2 cards as well as the dealer
    - Each player and dealer have one card down and one card up 
    - Each player is an object while their hand is a property
3. Players choose between hitting, standing, ~~doubling down, or splitting~~
    - If choose Hit then dealer gives another card
    - If Stand then end their turn
        - *turnFinished as a boolean value?*  
4. Once all players end their turn, show cards
    - Show cards is a function
    - if statement to check if all players ended turn
5. Evaluate hands
    - Check dealer's first
        - If bust, then every player that didn't bust wins
        - No bust, then whoever is higher than dealer (without going over 21) wins
        - If player has same as dealer, bet is returned to player

