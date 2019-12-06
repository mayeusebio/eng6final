% ENG 6 - Final Project
% Player Class

classdef player
    properties
        hand;
        balance;
        bet;
        turnFinished; 
    end
    
    methods
        %Constructor
        function obj = player
            obj.balance = 2000; % every player starts with 2000
            obj.turnFinished = false;
        end
        
        function placeBet(obj)
            % Code Here
        end
        
        function decision(obj)
            % Hit, Stand, Double Down, Split
        end
        
        function finishTurn(obj)
            obj.turnFinished = true;
        end
            
    end
end
