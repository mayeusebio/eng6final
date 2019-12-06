function dealFirstHand(app)
app.shuffledCards = app.cards(randperm(size(app.cards, 1)), :);

if(app.numPlayers == 1)
    % Dealer Hand
    app.Image2_3.ImageSource = "faceDownCard.png";
    app.Image_3.ImageSource = app.shuffledCards{1,3};
    app.Label_3.Text = num2str(str2double(app.shuffledCards{1,2}));

    %Player 1
    app.Image.ImageSource = app.shuffledCards{2,3};
    app.Image2.ImageSource = app.shuffledCards{3,3};
    app.Label.Text = num2str(str2double(app.shuffledCards{2,2}) + str2double(app.shuffledCards{3,2}));
    app.numCardsDealt = app.numCardsDealt + 3;
    % checking if player has blackjack
    if(str2num(app.Label.Text) == 21)
        
    end
elseif(app.numPlayers == 2)
    % Dealer Hand
    app.Image2_3.ImageSource = "faceDownCard.png";
    app.Image_3.ImageSource = app.shuffledCards{1,3};
    app.Label_3.Text = num2str(str2double(app.shuffledCards{1,2}));
    %Player 1
    app.Image.ImageSource = app.shuffledCards{2,3};
    app.Image2.ImageSource = app.shuffledCards{3,3};
    app.Label.Text = num2str(str2double(app.shuffledCards{2,2}) + str2double(app.shuffledCards{3,2}));
    %Player 2
    app.Image_2.ImageSource = app.shuffledCards{4,3};
    app.Image2_2.ImageSource = app.shuffledCards{5,3};
    app.Label_2.Text = num2str(str2double(app.shuffledCards{4,2}) + str2double(app.shuffledCards{5,2}));
    app.numCardsDealt = app.numCardsDealt + 5;
    %app.player2Hand = 2; %registering that player 2's hand has 2 cards
end
end