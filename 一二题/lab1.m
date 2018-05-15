a1=mean(R)
Z=R-repmat(a1,19020,1);
a2=Z'*Z/19020
a3=0;
for i=1:19020
    k=Z(i,:)'*Z(i,:);
    a3=a3+k;
end
a3=a3/19020
a4=Z(:,1)'*Z(:,2)/(sqrtm(Z(:,1)'*Z(:,1))*sqrtm(Z(:,2)'*Z(:,2)));
a=1:19020;
b=R(:,1);
figure
scatter(a,b,2);
hold on
b=R(:,2);
scatter(a,b,2,'r');


x=[min(Z(:,1)):0.1:max(Z(:,1))];
mu=mean(Z(:,1));
sigma=var(Z(:,1));
y=normpdf(x,mu,sigma);
figure
plot(x,y);

a61=var(Z(:,2));
a62=var(Z(:,3));
a63=var(Z(:,4));
a64=var(Z(:,5));
a65=var(Z(:,6));
a66=var(Z(:,7));
a67=var(Z(:,8));
a68=var(Z(:,9));
a69=var(Z(:,10));
X=[sigma,a61,a62,a63,a64,a65,a66,a67,a68,a69]
Max=max(X)
Min=min(X)

o=cov(R);
max(max(o))
[x y]=find(o==max(max(o)))
min(min(o))
[x y]=find(o==min(min(o)))
