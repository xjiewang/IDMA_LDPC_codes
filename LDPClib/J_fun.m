function [ I ] = J_fun( mu )
%J_FUN Summary of this function goes here
%   Detailed explanation goes here

    %According to MEC script p.206
    h1=0.3073;      
    h2=0.8935;
    h3=1.1064;
    I=(1-2.^(-h1.*(2.*mu).^h2)).^h3;


end

