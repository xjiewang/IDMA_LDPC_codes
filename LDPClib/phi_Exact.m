function ret =phi_Exact(mu)

% 
%     alpha=-0.4527;
%     beta=0.0218;
%     gamma=0.86;
%     
%     ret=0;
%     if mu>10
%         ret=sqrt(pi/mu)*exp(-mu/4)*(1-10/(7*mu));
%     else
%         ret=exp(alpha*mu^gamma+beta);
%     end
MU_Max = 40;
ret = -ones(size(mu));
% use numerical integral 
idx1 = 1:length(mu);
idx0= find(mu==0);
ret(idx0) =1;
idx2 = find(mu>MU_Max);
idx1([idx0 idx2]) = [];
ret(idx2) =0;

fun1 = @(x) exp(-((x-mu(idx1)).^2)./4./mu(idx1))./sqrt(4*pi*mu(idx1)).*tanh(x/2);
ret(idx1) = 1- integral(fun1,-Inf,Inf,'AbsTol',1e-16,'RelTol',1e-9,'ArrayValued',true) ;


end

