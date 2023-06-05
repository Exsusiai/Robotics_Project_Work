clc;
clear all

[s,sd,sdd] = lspb(0, 1, 50, 0.02);

plot(s);
figure;
plot(sd);
figure;
plot(sdd);