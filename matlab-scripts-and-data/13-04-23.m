%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ELIPSOIDE DE CONFI 13-04-23 %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%% Antonio Sevilla Sastre %%%%

format long

L = [38*360 + 59*60 + 38.97;
    59*360 + 53*60 + 44.03;
    211*360  + 23*60 + 46.38;
    98*360 + 53*60 + 23.41;
    271*360 + 17*60 + 29.38];

A = [1 0 0;
    0 1 0;
     0 0 1;
     1 1 0;
     0 1 1];

P = [8 0 0 0 0;
    0 16 0 0 0;
    0 0 8 0 0;
     0 0 0 8 0;
     0 0 0 0 8];

x_gorro = inv(A'*P*A)*A'*P*L

l_gorro = A*x_gorro

v_gorro = l_gorro - L

sigma_gorro = (v_gorro' * P * v_gorro )/ (5 - 3)

var_x_gorro = sigma_gorro * inv(A'*P*A)






