% ENG 006 - Final Project
% Game Logic - Pseudocode for now

% Pick number of players & create objects
numPlayers = input('How many players are there? ');

switch numPlayers
    case 1
        playerOne = player;
    case 2
        playerOne = player;
        playerTwo = player;
    otherwise
        disp('Error: Maximum 2 Players')
end

% Choose bets

% Create deck of cards
deck = [1:52];
deckShuffled = deck(randperm(length(deck(:))));

% Deal them out to player(s)

% Make decision

% Check if player(s) ended turn (aka STAND)

% Reveal dealer 2nd card
% If a BUST, then reward the players which have not gone over 21
% If not under 17, then Hit until it reaches 17 or over
% Reward players who have a Hand higher than dealer



