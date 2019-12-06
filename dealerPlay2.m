function dealerPlay2(app,dealerturn)
dealerhits = 0;
app.score3 = str2double(app.Label_3.Text)
while dealerturn == 1
    if app.score3 < 17
        app.numCardsDealt = app.numCardsDealt + 1;
        app.Image2_3.ImageSource = app.shuffledCards{app.numCardsDealt,3}; %replace facedown image (dealer card image 2) with next card in deck
        app.Label_3.Text = num2str(str2double(app.Label_3.Text) + str2double(app.shuffledCards{app.numCardsDealt,2}));
        %if else structure for dealer score
        app.score3 = str2double(app.Label_3.Text)
    elseif app.score3 >= 17
           app.dealerturn = 0;
           break
    else
        app.ErrorLabel.Visible = 'on';
    end
    
    if app.score3 < 17
        app.numCardsDealt = app.numCardsDealt + 1;
        app.Image3_3.Visible = 'on'; %card image turns on
        app.Image3_3.ImageSource = app.shuffledCards{app.numCardsDealt,3}; %adds image for 3rd card
        app.score3 = str2double(app.Label_3.Text)
    elseif app.score3 >= 17
        
        app.dealerturn = 0;
        break
    else
        app.ErrorLabel.Visible = 'on';
    end
    
        
    if app.score3 < 17
            app.numCardsDealt = app.numCardsDealt + 1
            app.Image4_3.Visible = 'on'; %card image turns on
            app.Image4_3.ImageSource = app.shuffledCards{app.numCardsDealt,3}; %adds image for 4th card
            app.score3 = str2double(app.Label_3.Text)
    elseif score >= 17
        
        app.dealerturn = 0;
        break
    else
        app.ErrorLabel.Visible = 'on';
    end 
    
    if app.score3 < 17
        app.numCardsDealt = app.numCardsDealt + 1
        app.Image5_3.Visible = 'on'; %card image turns on
        app.Image5_3.ImageSource = app.shuffledCards{app.numCardsDealt,3}; %adds image for 5th card
        app.score3 = str2double(app.Label_3.Text)
    elseif score >= 17
        
        app.dealerturn = 0;
        break
    else
        app.ErrorLabel.Visible = 'on';
    end 
        
        
    if app.score3 < 17
        app.numCardsDealt = app.numCardsDealt + 1
        app.Image6_3.Visible = 'on'; %card image turns on
        app.Image6_3.ImageSource = app.shuffledCards{app.numCardsDealt,3}; %adds image for 6th card
        app.score3 = str2double(app.Label_3.Text)
    elseif score >= 17
        
        app.dealerturn = 0;
        break
    else
        app.ErrorLabel.Visible = 'on';
    end 
        
        %otherwise
         %   app.Image6_3.Visible = 'on'; %card image turns on
          %  app.Image6_3.ImageSource = app.shuffledCards{app.numCardsDealt,3}; %updates image 6 slot for over 6 cards in rare cases
    end
   

end
