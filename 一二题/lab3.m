%第一问
R=zeros(150,150);
for i=1:150
    for j=1:150
        R(i,j)=I(i,:)*I(j,:)';
    end
end
R
%第二问
F=zeros(150,5);
for i=1:150
    for j=1:4
        F(i,j)=I(i,j)^2;
    end
    F(i,5)=I(i,1)*I(i,2)*I(i,3)*I(i,4)*2;
end
F
%中心化
F2=zeros(150,5);
m=mean(F);
for i=1:150
    F2(i,:)= F(i,:)-m;
end
F2;
%归一化
k=zeros(150,150);
for i=1:150
    for j=1:150
        k(i,j)=F(i,:)*F(j,:)'/(sqrtm(F(i,:)*F(i,:)')*sqrtm(F(j,:)*F(j,:)'));
    end     
end
k
%第三题
M=zeros(150,150);
for i=1:150
    for j=1:150
        M(i,j)=F(i,:)*F(j,:)';
    end
end
M