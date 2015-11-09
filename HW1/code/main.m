
z=[2000,1000,3000];
t=0.64;
N=500;
T=zeros(2,N);
for i=1:3
    for n=1:N
        T(i,n)=homework1(z(i)/2,t);
    end
    T(i,:)=cumsum(T(i,:))./(1:N);
    
end
T=T/4;
plot(1:N,T(1,:));
hold on
plot(1:N,T(2,:),'r');
plot(1:N,T(3,:),'g');