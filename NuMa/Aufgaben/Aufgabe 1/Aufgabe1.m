x1 = 0.03125;
x2 = 10000;
x3 = 0.2;

%{
Für Teil A:
    Basis ist 10
    t = 3 Ziffern
    kleinster Exponent = -3
    größter Exponent = 3
%}
disp("Teil A:")
disp("x1: 0.03125 => 3.13*10^-2")
disp("x2: 10000 => 1*10^5 geht nicht (größter Exp. = 3) => OVERFLOW")
disp("x3: 0.2 => 2*10^-1")

%{
Für Teil B:
    Basis ist 2
    t = 53 Ziffern
    kleinster Exponent = 1023
    größter Exponent = -1022
%}
disp(" ")
disp("Teil B:")
%x1:
%log2(x1) findet den Exponenten (Hier -5)
disp("x1: " + x1 + " => 2*10^" + log2(x1))

%x2:
% log2(x2) gibt 13.2877, gerundet 13
% Braucht man log 2? Man sieht ja, dass das Komma sich um 13 Stellen
% verschieben muss...
%x2 in binär: 10011100010000
disp("x2: 10000 => 1.0011100010000*2^13")

%x3
% binär: 0.00110011001100110011
disp("x3: 0.2 => 0.00110011001100110011... => 1.1001(12x)1010*10*-3 (aufgerundet)")
% Lösung verstehe ich nicht, was ist dieses 0.20000000000...111022 ist das
% einfach die Dezimalrepräsenstation?

%{
Für Teil C:
    1 wird weggelassen, Mantisse wird niedergeschrieben, Exponenten um 1023
    erhöhen, also:
%}
format Hex %Dartellung der Zahlen Basis 16 Hexadezimal
disp(" ")
disp("Teil C")
disp("x1 => Mantisse = 0; Exponent = 1018")
disp(x1);
disp("x1 => Mantisse = 0011100010000; Exponent = 1036")
disp(x2);
disp("x1 => Mantisse = 1001(12x)1010; Exponent = 1020")
disp(x3);
