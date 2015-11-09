function X=sampleG(z,t)
    u=unifrnd(0,1);
    K=pi^2/8+z^2/2;
    alpha=exp(-K*t)/(exp(-K*t)+4*pi*K*F(t,z)*exp(-z));
    if u<(1-alpha)
        X=sampleG1(z,t);
    else
        X=sampleG2(K,t);
    end
end