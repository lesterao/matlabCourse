
f = 440; % frecuencia de la se�al en Hz 

w=2*pi*f; %frecuencia de la se�al en rad/s 

Fs =8000; % frecuencia de muestreo en Hz 

tf=3/f; % para que dure 3 ciclos 
%tf=1; % para que dure 1 s 

t = (0:1/Fs:tf)'; %Generaci�n del vector de tiempo 

y=sin(w*t) % Generaci�n de la se�al sinusoidal 

%saturar la sennal a 0.8
for n=1:55,
    if y(n)>0.8,
        y(n)=0.8;
    end
    if y(n)<-0.8,
        y(n)=-0.8;
    end
end
     
plot(t,y) 

axis([0 tf -1.2 1.2]) % ventana para ver la se�al 
grid 

xlabel('Tiempo (s)') 
ylabel('Amplitud') 

title('Se�al sinusoidal a 440 Hz') 