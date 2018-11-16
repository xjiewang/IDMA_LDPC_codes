function [ mu ] = inv_J_fun( I )
%INV_J_FUN Summary of this function goes here
%   Detailed explanation goes here

    %According to MEC script p.206
    h1=0.3073;      
    h2=0.8935;
    h3=1.1064;
    mu=0.5*(-1/h1*log2(1-I.^(1/h3))).^(1/(h2));


end

