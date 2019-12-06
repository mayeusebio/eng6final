function hit(app)
%% PLAYER 1
if (app.player1turn == 1)
    app.player1hits = app.player1hits + 1;
    app.numCardsDealt = app.numCardsDealt + 1;
    app.Label.Text = num2str(str2double(app.Label.Text) + str2double(app.shuffledCards{app.numCardsDealt,2}));
    %updates label value for Player 1 score
    score1 = str2double(app.Label.Text);
% Check's player's hands for blackjack or bust after every turn
    if score1 < 21
        app.player1turn = 1;
        
    elseif score1 == 21
        app.player1turn = 0;
        app.BlackjackLabel.Visible = 'on';
        bustaudio(app);
        app.BlackjackLabel.FontSize = 20;
        app.BlackjackLabel.FontColor = [1 0 0];
        app.HitButton.Enable = 'off';
        app.StandButton.Enable = 'off';
        % If player 1 turns ends by blackjack then player 2 can play
        app.HitButton_2.Enable = 'on';
        app.StandButton_2.Enable = 'on';

    elseif score1>21
        app.player1turn = 0;
        % Enable player 2's buttons if player 1 busts
        app.HitButton_2.Enable = 'on';
        app.StandButton_2.Enable = 'on';
        app.BustLabel.Visible = 'on';
        wahwah(app)
        updateBalanceTest(app);
        app.BustLabel.FontColor=  [1 0 0];
        app.HitButton.Enable = 'off';
        app.StandButton.Enable = 'off';
    else
        app.ErrorLabel.Visible = 'on';    
    end
end

%% PLAYER 2
if (app.player2turn == 1)
    app.numCardsDealt = app.numCardsDealt + 1;
    app.Label_2.Text = num2str(str2double(app.Label_2.Text) + str2double(app.shuffledCards{app.numCardsDealt,2}));
    %updates player 2 score
    score2 = str2num(app.Label_2.Text);
    if score2 < 21
        app.player2turn = 1;
    elseif score2 == 21
        app.player2turn=0;
        app.BlackjackLabel_2.Visible = 'on';
        app.BlackjackLabel.FontSize = 20;
        app.BlackjackLabel_2.FontColor = [1 0 0];
        app.HitButton_2.Enable = 'off';
        app.StandButton_2.Enable = 'off';
        bustaudio(app);

    elseif score2 > 21
        app.player2turn = 0;
        app.BustLabel_2.Visible = 'on';
        app.HitButton_2.Enable = 'off';
        app.BustLabel_2.Visible = 'on';
        app.BustLabel_2.FontColor=  [1 0 0];
        app.HitButton_2.Enable = 'off';
        app.StandButton_2.Enable = 'off';
        wahwah(app);
 
    else
        app.ErrorLabel.Visible = 'on';
    end
end


end