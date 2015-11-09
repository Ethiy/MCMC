function X=truncInvGaus2(mu,t)
    Y=normrnd(0,1);
    Y=Y^2;
    X=mu+0.5*mu^2*Y-.5*mu*sqrt(4*mu*Y+(mu*Y)^2);
    u=unifrnd(0,1);
    if u>mu/(mu+X)
        X=mu^2/X;
    end
    while t>X
        Y=normrnd(0,1);
        Y=Y^2;
        X=mu+0.5*mu^2*Y-.5*mu*sqrt(4*mu*Y+(mu*Y)^2);
        u=unifrnd(0,1);
        if u>mu/(mu+X)
            X=mu^2/X;
        end
    end
end
