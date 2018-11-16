function mu =inv_phi(in)
    Nit=18; %bisection method; could be optimized
    mu_max=20;    
    
    a=0.5;
    mu=mu_max*a;
    for i=2:Nit
        t=phi(mu);
        if t<in
            a=a-2^(-i);
            mu=mu_max*a;
        else
            a=a+2^(-i);
            mu=mu_max*a;
        end
        
    end
end