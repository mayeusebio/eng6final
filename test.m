dealerturn = 1;
dealerhits = 0;
shuffledCards = {'1','2','3','4','5','6','7','8','9'};
LabelText = '0';
numCardsDealt = 1;
while dealerturn == 1
    numCardsDealt = numCardsDealt + 1;
    LabelText = num2str(str2double(LabelText) + str2double(shuffledCards{numCardsDealt}))
    %if else structure for dealer score
    score3 = str2double(LabelText)

    switch dealerhits
        case 0
            disp('app.Image3_3.Visible = on');
        case 1
            disp('app.Image4_3.Visible = on');
        case 2
            disp('app.Image5_3.Visible = on');
        case 3
            disp('app.Image6_3.Visible = on');
        otherwise
            disp('app.Image6_3.Visible = on');
    end
    
    if (score3 < 17)
        dealerturn = 1;
        dealerhits = dealerhits + 1;
    elseif (score3 >= 17)
        dealerturn = 0;
    else
        disp('ErrorLabel.Visible = on');
    end
end
