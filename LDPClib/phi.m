function ret =phi(mu)


    alpha=-0.4527;
    beta=0.0218;
    gamma=0.86;
    
    ret=0;
    if mu>10
        ret=sqrt(pi/mu)*exp(-mu/4)*(1-10/(7*mu));
    else
        ret=exp(alpha*mu^gamma+beta);
    end

end

