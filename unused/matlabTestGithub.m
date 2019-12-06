% The King, Queen, and Jack
% ENG 6 - Final Project - Blackjack Program

%% Creating a shuffled deck
%This section assigns each card in hand_shuffled with it's appropriate
%value and suit. I still need good method to assign proper card values.
%ie. king = 13 should be 10. ace = 1 should be 1 or 11.

hand = [1:52];
hand_shuffled = hand(randperm(length(hand(:))));

suits = ceil(hand_shuffled ./ 13);
values = mod(hand_shuffled - 1, 13) + 1;

suit_names = {' clubs',' spades',' diamonds',' hearts'};
value_names = {'ace','2','3','4','5','6','7','8','9','10','jack','queen','king'};

s1 = cell(length(hand_shuffled),1);
s2 = cell(length(hand_shuffled),1);
for i = 1:length(hand_shuffled)
    s1{i} = [value_names{values(i)}];
    s2{i} = [suit_names{suits(i)}];
end
hand_shuffled_text = strcat(s1,' of',s2);

%% Dealing the cards
hand_dealer = hand_shuffled_text(1:2);
hand_player = hand_shuffled_text(3:4);

%index values are integer identification of card from: hand = [1:52] and
%suits/values in lines 12/13. I would use "values(i)" to sum/update score
fprintf("The dealer initially has %s (index value: %i) and %s (index value: %i) in their hand.\n", hand_dealer{1},hand_shuffled(1),hand_dealer{2}, hand_shuffled(2));
fprintf("The initial dealers card value is %i. \n", values(1)+values(2));
fprintf("The player initially has %s (index value: %i) and %s (index value: %i) in their hand.\n", hand_player{1},hand_shuffled(3),hand_player{2},hand_shuffled(4));
fprintf("The initial players card value is %i. \n", values(3)+values(4));

%What we could do for handing out cards from the shuffled deck throughout 
%the game is to declare counter j (already used i earlier) and call element j 
%from the cell array hand_shuffled_text. Increase j (j=j+1) after each call. 
%% User input decision making -- need help
j=5; %start at fifth card in shuffled deck. 1,2 are dealer initial two cards. 3-4 are player initial two cards. see above.
while 1 %if invalid input, while loop will not break. 
    prompt = 'Would you like to [H]it,[S]tand,or [E]xit?';
    input1 = input(prompt, 's');
    switch input1
        case {'H','h'}
            next_card = hand_shuffled_text{j};
            fprintf("Your next card is a %s.\n", next_card)
            decision = "hit"; %define these later
            j=j+1;
            break;
            
        case {'S','s'}
            fprintf("Your selection : stand.\n");
            decision = "stand"; %define these later
            break;

        case {'E','e'}
            fprintf("Your selection : exit the program.\n");
            break
        otherwise
            fprintf("Invalid input. Please try again.\n");
    end
    disp("test");
end