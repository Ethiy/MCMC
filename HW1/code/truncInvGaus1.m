function X=truncInvGaus1(mu,t)
    e=exprnd(1);
    ee=exprnd(1);
    while e*e>2*ee/t
        e=exprnd(1);
        ee=exprnd(1);
    end
    X=t/(1+t*e)^2;
    alpha=exp(-.5*X/(mu^2));
    u=unifrnd(0,1);
    while u>alpha
            e=exprnd(1);
            ee=exprnd(1);
            while e*e>2*ee/t
                e=exprnd(1);
                ee=exprnd(1);
            end
            X=t/(1+t*e)^2;
            alpha=exp(-.5*X/(mu^2));
            u=unifrnd(0,1);
    end
end
