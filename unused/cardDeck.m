function cardDeck(app)

if(app.numPlayers == 1)
    % Dealer Hand
    app.Image_3.ImageSource = "faceDownCard.png";
    app.Image2_3.ImageSource = app.imgFileNames{1};
    %Player 1
    app.Image.ImageSource = app.imgFileNames{2};
    app.Image2.ImageSource = app.imgFileNames{3};
    elseif(app.numPlayers == 2)
    % Dealer Hand
    app.Image_3.ImageSource = "faceDownCard.png";
    app.Image2_3.ImageSource = app.imgFileNames{1};
    %Player 1
    app.Image.ImageSource = app.imgFileNames{2};
    app.Image2.ImageSource = app.imgFileNames{3};
    %Player 2
    app.Image_2.ImageSource = app.imgFileNames{4};
    app.Image2_2.ImageSource = app.imgFileNames{5};
end
end