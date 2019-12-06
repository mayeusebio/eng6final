function updateBalanceTest(app)
% this code runs always since default there is at least one player
    % if plr 1 gets busts
    if(str2double(app.Label.Text) > 21)
        app.Bet1EditField.Value = 0;
    % if dealer busts & plyr1 under 21
    elseif(str2double(app.Label_3.Text) > 21 && str2double(app.Label.Text) <= 21) 
            app.Balance1EditField.Value = app.Balance1EditField.Value + (2 * app.Bet1EditField.Value);
        % dealer under 21 and player under 21    
    elseif(str2double(app.Label_3.Text) <= 21 && str2double(app.Label.Text) <= 21)
            % plr 1 hand greater than dealer
            if(str2double(app.Label.Text) > str2double(app.Label_3.Text))
                app.Balance1EditField.Value = app.Balance1EditField.Value + (2 * app.Bet1EditField.Value);
            % plyr 1 hand less than dealer
            elseif(str2double(app.Label.Text) < str2double(app.Label_3.Text))
                % nothing should happen to the balance, just lose their bet
                app.Balance1EditField.Value = app.Balance1EditField.Value;
                app.Bet1EditField.Value = 0;
            elseif(str2double(app.Label.Text) == str2double(app.Label_3.Text))
                % kinda redundant, but nothing should happen to the balance if
                % they have the same hand
                app.Balance1EditField.Value = app.Balance1EditField.Value;
            end
    end
    
    if(str2double(app.Label_2.Text) > 21)
        app.Bet2EditField.Value = 0;
    % if dealer busts & plyr1 under 21
    elseif(str2double(app.Label_3.Text) > 21 && str2double(app.Label_2.Text) <= 21) 
            app.Balance2EditField.Value = app.Balance2EditField.Value + (2 * app.Bet2EditField.Value);
        % dealer under 21 and player under 21    
    elseif(str2double(app.Label_3.Text) <= 21 && str2double(app.Label_2.Text) <= 21)
            % plr 1 hand greater than dealer
            if(str2double(app.Label_2.Text) > str2double(app.Label_3.Text))
                app.Balance2EditField.Value = app.Balance2EditField.Value + (2 * app.Bet2EditField.Value);
            % plyr 1 hand less than dealer
            elseif(str2double(app.Label_2.Text) < str2double(app.Label_3.Text))
                % nothing should happen to the balance, just lose their bet
                app.Balance2EditField.Value = app.Balance2EditField.Value;
                app.Bet2EditField.Value = 0;
            elseif(str2double(app.Label_2.Text) == str2double(app.Label_3.Text))
                % kinda redundant, but nothing should happen to the balance if
                % they have the same hand
                app.Balance2EditField.Value = app.Balance2EditField.Value;
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