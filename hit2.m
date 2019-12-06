function hit2(app)
if (app.player2turn == 1)
    app.numCardsDealt = app.numCardsDealt + 1;
    app.Label_2.Text = num2str(str2double(app.Label_2.Text) + str2double(app.shuffledCards{app.numCardsDealt,2}));
    %updates player 2 score
    score2 = str2num(app.Label_2.Text);
    if score2<21
        app.player2turn = 1;
    elseif score2==21
        app.player2turn=0;
        %fprintf("Blackjack!")
    elseif score2>21
        app.player2turn = 0;
    else
        app.ErrorLabel.Visible = 'on';
    end
end
