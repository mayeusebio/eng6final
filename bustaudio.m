%I thought I would record some of the voices I hear in my head

function bustaudio(app)

[y,Fs] = audioread('BlackJack.m4a');
sound(y,Fs)
%bust = audiorecorder(8000,8,1)
%record(bust,2)
%b=getaudiodata(bust);
%plot(b)
%sound(b)
end

