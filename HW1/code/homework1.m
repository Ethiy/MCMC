function X=homework1(z,t)
    n=0;
    X=sampleG(z,t);
    S0=s(n,z,X,t);
    u=unifrnd(0,S0);
    n=1;
    S=s(n,z,X,t);
    while (S>u && mod(n,2)==0) || (S>=u && mod(n,2)==1)
        n=n+1;
        S=s(n,z,X,t);
    end
    
    while mod(n,2)==0
        n=0;
        X=sampleG(z,t);
        S0=s(n,z,X,t);
        u=unifrnd(0,S0);
        n=1;
        S=s(n,z,X,t);
        while (S>u && mod(n,2)==0) || (S>=u && mod(n,2)==1)
            n=n+1;
            S=s(n,z,X,t);
        end
    end
end