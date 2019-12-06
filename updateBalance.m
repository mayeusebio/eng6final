function updateBalance(app)
% we call this file after the dealer's turn. 

if((str2double(app.Label.Text) <= 21) && (str2double(app.Label.Text)>(str2double(app.Label_3.Text))) && (str2double(app.Label_3.Text))<=21)
    app.Balance1EditField.Value = app.Balance1EditField.Value + 2*(app.Bet1EditField.Value);
    %if you got 21 or less and your score is higher than the dealer and the
    %dealer did not bust, then you win!
elseif (str2double(app.Label.Text) > 21) && (str2double(app.Label_3.Text) > 21)
    app.Balance1EditField.Value = app.Balance1EditField.Value + (app.Bet1EditField.Value);
    %you both busted, your bet is returned to you
elseif str2double(app.Label.Text) > 21) && (str2double(app.Label_3.Text) < 21)
    app.Balance1EditField.Value = app.Balance1EditField.Value;
    %you busted and the dealer did not so you lost
elseif ((str2double(app.Label.Text) <= 21) && (str2double(app.Label.Text)>(str2double(app.Label_3.Text))) && (str2double(app.Label_3.Text))>21)
    app.Balance1EditField.Value = app.Balance1EditField.Value + 2*(app.Bet1EditField.Value);
    %if you got 21 or less and your score is higher than the dealer and the
    %dealer did bust, then you win!
elseif str2double(app.Label.Text)==str2double(app.Label_3.Text)
    app.Balance1EditField.Value = app.Balance1EditField.Value;
    %you got the same score so I'm returning your bet
else 
    app.Balance1EditField.Value = app.Balance1EditField.Value;
    %dunno when this would ever come into play but I'm just gonna return
    %your money
end

if app.numPlayers==2
    if((str2double(app.Label_2.Text) <= 21) && (str2double(app.Label_2.Text)>(str2double(app.Label_3.Text))) && (str2double(app.Label_3.Text))<=21)
        app.Balance2EditField.Value = app.Balance1EditField.Value + 2*(app.Bet1EditField.Value);
        %if you got 21 or less and your score is higher than the dealer and the
        %dealer did not bust, then you win!
    elseif (str2double(app.Label_2.Text) > 21) && (str2double(app.Label_3.Text) > 21)
        app.Balance2EditField.Value = app.Balance2EditField.Value + (app.Bet2EditField.Value);
        %you both busted, your bet is returned to you
    elseif str2double(app.Label_2.Text) > 21) && (str2double(app.Label_3.Text) < 21)
        app.Balance2EditField.Value = app.Balance2EditField.Value;
        %you busted and the dealer did not so you lost
    elseif ((str2double(app.Label_2.Text) <= 21) && (str2double(app.Label_2.Text)>(str2double(app.Label_3.Text))) && (str2double(app.Label_3.Text))>21)
        app.Balance2EditField.Value = app.Balance2EditField.Value + 2*(app.Bet2EditField.Value);
        %if you got 21 or less and your score is higher than the dealer and the
        %dealer did bust, then you win!
    elseif str2double(app.Label_2.Text)==str2double(app.Label_3.Text)
        app.Balance2EditField.Value = app.Balance2EditField.Value;
        %you got the same score so I'm returning your bet
    else 
        app.Balance2EditField.Value = app.Balance2EditField.Value;
        %dunno when this would ever come into play but I'm just gonna return
        %your money
    end
end

%update variable balances for all 1-player and 2-player cases since
%balance1 and balance2 are carried over to the StartScreen2 
switch app.numPlayers
    case 1
        balance1 = app.Balance1EditField.Value;
    case 2
        balance1 = app.Balance1EditField.Value;
        balance2 = app.Balance2EditField.Value;
    otherwise
        app.ErrorLabel.Visible = 'on';        
end


end