function mu =inv_phi_Exact(in)
    Nit=25; %bisection method; could be optimized
    mu_max=40;    
    
    a=0.5;
    mu=mu_max*a;
    for i=2:Nit
        t=phi_Exact(mu);
        if t<in
            a=a-2^(-i);
            mu=mu_max*a;
        else
            a=a+2^(-i);
            mu=mu_max*a;
        end
        
    end
end