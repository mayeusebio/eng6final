classdef blackjack_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure               matlab.ui.Figure
        NumberofPlayersLabel   matlab.ui.control.Label
        Button                 matlab.ui.control.StateButton
        Button_2               matlab.ui.control.StateButton
        BLACKJACKLabel         matlab.ui.control.Label
        QuitButton             matlab.ui.control.Button
        GameModeLabel          matlab.ui.control.Label
        TutorialButton         matlab.ui.control.StateButton
        NormalButton           matlab.ui.control.StateButton
        BetEditFieldLabel      matlab.ui.control.Label
        BetEditField           matlab.ui.control.EditField
        ResetButton            matlab.ui.control.Button
        DoneButton             matlab.ui.control.Button
        BalanceEditFieldLabel  matlab.ui.control.Label
        BalanceEditField       matlab.ui.control.EditField
        Button_3               matlab.ui.control.Button
        Button_4               matlab.ui.control.Button
        Button_5               matlab.ui.control.Button
        Button_6               matlab.ui.control.Button
    end

    
    properties (Access = private)
        numPlayers % Number of players decided on which button is pushed
        gameMode
        betAmount = 0
        balance = 2000;
        quitGame
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Value changed function: Button_2
        function Button_2ValueChanged(app, event)
            value = app.Button_2.Value;
            app.numPlayers = 2;
        end

        % Value changed function: Button
        function ButtonValueChanged(app, event)
            value = app.Button.Value;
            app.numPlayers = 1;
        end

        % Button pushed function: QuitButton
        function QuitButtonPushed(app, event)
            app.quitGame = true;
        end

        % Button pushed function: ResetButton
        function ResetButtonPushed(app, event)
            app.BetEditField.Value = '0';
            app.betAmount = 0;
            app.BalanceEditField.Value = '2000';
            app.balance = 2000;
        end

        % Value changed function: BetEditField
        function BetEditFieldValueChanged(app, event)
            value = app.BetEditField.Value;
            
        end

        % Button down function: UIFigure
        function UIFigureButtonDown(app, event)

        end

        % Button pushed function: Button_4
        function Button_4Pushed(app, event)
            if (app.balance > 100)
            app.betAmount = app.betAmount + 100;  
            app.balance = app.balance - 100;
            balanceValue = num2str(app.balance);
            value = num2str(app.betAmount);
            app.BetEditField.Value = value;
            app.BalanceEditField.Value = balanceValue;
            end
        end

        % Button pushed function: Button_5
        function Button_5Pushed(app, event)
            if (app.balance > 50)
            app.betAmount = app.betAmount + 50;  
            app.balance = app.balance - 50;
            balanceValue = num2str(app.balance);
            value = num2str(app.betAmount);
            app.BetEditField.Value = value;
            app.BalanceEditField.Value = balanceValue;
            end
        end

        % Button pushed function: Button_6
        function Button_6Pushed(app, event)
            if (app.balance > 10) 
            app.betAmount = app.betAmount + 10; 
             app.balance = app.balance - 10;
             balanceValue = num2str(app.balance);
             value = num2str(app.betAmount);
             app.BetEditField.Value = value;
             app.BalanceEditField.Value = balanceValue;
            end
        end

        % Button pushed function: Button_3
        function Button_3Pushed(app, event)
            if (app.balance > 500)
            app.betAmount = app.betAmount + 500; 
            app.balance = app.balance - 500;
            balanceValue = num2str(app.balance);
            value = num2str(app.betAmount);
            app.BetEditField.Value = value;
            app.BalanceEditField.Value = balanceValue;
            end
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Color = [0.0039 0.2627 0.1176];
            app.UIFigure.Position = [100 100 640 480];
            app.UIFigure.Name = 'UI Figure';
            app.UIFigure.ButtonDownFcn = createCallbackFcn(app, @UIFigureButtonDown, true);

            % Create NumberofPlayersLabel
            app.NumberofPlayersLabel = uilabel(app.UIFigure);
            app.NumberofPlayersLabel.FontSize = 26;
            app.NumberofPlayersLabel.FontColor = [1 1 1];
            app.NumberofPlayersLabel.Position = [218 434 222 34];
            app.NumberofPlayersLabel.Text = 'Number of Players';

            % Create Button
            app.Button = uibutton(app.UIFigure, 'state');
            app.Button.ValueChangedFcn = createCallbackFcn(app, @ButtonValueChanged, true);
            app.Button.Text = '1';
            app.Button.BackgroundColor = [0.8706 0.0235 0.0275];
            app.Button.FontSize = 16;
            app.Button.Position = [181 364 122 57];

            % Create Button_2
            app.Button_2 = uibutton(app.UIFigure, 'state');
            app.Button_2.ValueChangedFcn = createCallbackFcn(app, @Button_2ValueChanged, true);
            app.Button_2.Text = '2';
            app.Button_2.BackgroundColor = [0.1725 0.1725 0.1725];
            app.Button_2.FontSize = 16;
            app.Button_2.FontColor = [1 1 1];
            app.Button_2.Position = [331 364 109 57];

            % Create BLACKJACKLabel
            app.BLACKJACKLabel = uilabel(app.UIFigure);
            app.BLACKJACKLabel.FontSize = 18;
            app.BLACKJACKLabel.FontColor = [1 1 1];
            app.BLACKJACKLabel.Position = [522 45 111 23];
            app.BLACKJACKLabel.Text = 'BLACKJACK';

            % Create QuitButton
            app.QuitButton = uibutton(app.UIFigure, 'push');
            app.QuitButton.ButtonPushedFcn = createCallbackFcn(app, @QuitButtonPushed, true);
            app.QuitButton.Position = [522 19 100 22];
            app.QuitButton.Text = 'Quit?';

            % Create GameModeLabel
            app.GameModeLabel = uilabel(app.UIFigure);
            app.GameModeLabel.FontSize = 26;
            app.GameModeLabel.FontColor = [1 1 1];
            app.GameModeLabel.Position = [239 318 150 34];
            app.GameModeLabel.Text = 'Game Mode';

            % Create TutorialButton
            app.TutorialButton = uibutton(app.UIFigure, 'state');
            app.TutorialButton.Text = 'Tutorial';
            app.TutorialButton.BackgroundColor = [0.8706 0.0235 0.0275];
            app.TutorialButton.FontSize = 16;
            app.TutorialButton.Position = [181 244 122 57];

            % Create NormalButton
            app.NormalButton = uibutton(app.UIFigure, 'state');
            app.NormalButton.Text = 'Normal';
            app.NormalButton.BackgroundColor = [0.1725 0.1725 0.1725];
            app.NormalButton.FontSize = 16;
            app.NormalButton.FontColor = [1 1 1];
            app.NormalButton.Position = [331 244 109 57];

            % Create BetEditFieldLabel
            app.BetEditFieldLabel = uilabel(app.UIFigure);
            app.BetEditFieldLabel.HorizontalAlignment = 'right';
            app.BetEditFieldLabel.FontSize = 26;
            app.BetEditFieldLabel.FontColor = [1 1 1];
            app.BetEditFieldLabel.Position = [141 172 45 34];
            app.BetEditFieldLabel.Text = 'Bet';

            % Create BetEditField
            app.BetEditField = uieditfield(app.UIFigure, 'text');
            app.BetEditField.ValueChangedFcn = createCallbackFcn(app, @BetEditFieldValueChanged, true);
            app.BetEditField.FontSize = 26;
            app.BetEditField.Position = [201 169 188 37];
            app.BetEditField.Value = '0';

            % Create ResetButton
            app.ResetButton = uibutton(app.UIFigure, 'push');
            app.ResetButton.ButtonPushedFcn = createCallbackFcn(app, @ResetButtonPushed, true);
            app.ResetButton.FontSize = 16;
            app.ResetButton.Position = [405 169 61 37];
            app.ResetButton.Text = 'Reset';

            % Create DoneButton
            app.DoneButton = uibutton(app.UIFigure, 'push');
            app.DoneButton.Position = [263 19 108 27];
            app.DoneButton.Text = 'Done';

            % Create BalanceEditFieldLabel
            app.BalanceEditFieldLabel = uilabel(app.UIFigure);
            app.BalanceEditFieldLabel.HorizontalAlignment = 'right';
            app.BalanceEditFieldLabel.FontColor = [1 1 1];
            app.BalanceEditFieldLabel.Position = [470 434 49 22];
            app.BalanceEditFieldLabel.Text = 'Balance';

            % Create BalanceEditField
            app.BalanceEditField = uieditfield(app.UIFigure, 'text');
            app.BalanceEditField.Position = [534 434 100 22];
            app.BalanceEditField.Value = '2000';

            % Create Button_3
            app.Button_3 = uibutton(app.UIFigure, 'push');
            app.Button_3.ButtonPushedFcn = createCallbackFcn(app, @Button_3Pushed, true);
            app.Button_3.Icon = 'casinoChip.png';
            app.Button_3.IconAlignment = 'center';
            app.Button_3.BackgroundColor = [0.0039 0.2627 0.1176];
            app.Button_3.FontColor = [1 1 1];
            app.Button_3.Position = [119 59 100 98];
            app.Button_3.Text = '500';

            % Create Button_4
            app.Button_4 = uibutton(app.UIFigure, 'push');
            app.Button_4.ButtonPushedFcn = createCallbackFcn(app, @Button_4Pushed, true);
            app.Button_4.Icon = 'casinoChip.png';
            app.Button_4.IconAlignment = 'center';
            app.Button_4.BackgroundColor = [0.0039 0.2627 0.1176];
            app.Button_4.FontColor = [1 1 1];
            app.Button_4.Position = [218 59 100 98];
            app.Button_4.Text = '100';

            % Create Button_5
            app.Button_5 = uibutton(app.UIFigure, 'push');
            app.Button_5.ButtonPushedFcn = createCallbackFcn(app, @Button_5Pushed, true);
            app.Button_5.Icon = 'casinoChip.png';
            app.Button_5.IconAlignment = 'center';
            app.Button_5.BackgroundColor = [0.0039 0.2627 0.1176];
            app.Button_5.FontColor = [1 1 1];
            app.Button_5.Position = [317 59 100 98];
            app.Button_5.Text = '50';

            % Create Button_6
            app.Button_6 = uibutton(app.UIFigure, 'push');
            app.Button_6.ButtonPushedFcn = createCallbackFcn(app, @Button_6Pushed, true);
            app.Button_6.Icon = 'casinoChip.png';
            app.Button_6.IconAlignment = 'center';
            app.Button_6.BackgroundColor = [0.0039 0.2627 0.1176];
            app.Button_6.FontColor = [1 1 1];
            app.Button_6.Position = [419 59 100 98];
            app.Button_6.Text = '10';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = blackjack_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end