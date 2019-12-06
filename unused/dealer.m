 % ENG 006 - Final Project
% Dealer class

classdef dealer
    properties
        deck;
        hand;
    end
    
    methods
        % Constructor
        function obj = dealer
            obj.deck = randperm(52); % maybe this should be at 
            obj.hand = obj.deck([1,2]);
            % dealer's hand is the first two cards on the deck, always
            % randomized
        end
        
        % Just for testing purposes, checking if deck initialized properly
        function checkDeck(obj)
            disp(obj.deck)
            noRepeats=length(unique(obj.deck)) %This code Zach wrote, its unecessary but just checked that no repeats
        end
        
        % Check both cards, initially one of the dealer's hands is hidden 
        function checkHand(obj)
            disp(obj.hand)
        end
        
        % First two cards to players    -yo so I assigned the next 4 cards to the players
        function dealHand(obj)
        if numPlayers=2
      
            player1Hand=obj.deck([3,4])     % created some variables
            player2Hand=obj.deck([5,6])
        else
            player1Hand=obj.deck([3,4])
        end
        
        % Give out one card to player who wants card
        function dealCard(obj)
            
        end
        
        % Dealer checks if all players are done
        function checkStatus(obj)
        end
        
    end
end

