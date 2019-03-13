[xn, Fs] = audioread('hw5audio.wav');
% PART a-i
X=fft(xn,512);
k=0:511;
figure;
plot(k,abs(X));
title('Magnitude of X[k]')
xlabel('k')
ylabel('X[k]')
a=1;
for j=1:length(X)
    if abs(X(j))> 25
        K_peak(a)=j;
        a=a+1;
    end
end

% PART b-i
k_2= -256:255;
figure;
plot(k_2,fftshift(abs(X)));
title('magnitude of X[k] from k=-256 to k=256')
xlabel('k');
ylabel('X[k]');
a=1;
for i=1:length(X)
    if abs(X(i))> 25 
        K_peak_2(a)=k_2(i);
        a=a+1;
    end
end
%Symetry is with respect to k=0.
% PART b-ii
%It will be shown later.
% Part b-iii
 fk=K_peak_2*Fs/512 ;

