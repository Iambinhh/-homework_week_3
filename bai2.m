


%syms l1 l2 l3 l4 l5 t1 t2 s
%R1=[cos(t1) -sin(t1) 0 0; sin(t1) cos(t1) 0 0 ; 0 0 1 0; 0 0 0 1];
%T1=[1 0 0 0; 0 1 0 0; 0 0 1 l1; 0 0 0 1];
%T2=[1 0 0 0; 0 1 0 l2; 0 0 1 0; 0 0 0 1];
%T3=[1 0 0 0; 0 1 0 0; 0 0 1 l3; 0 0 0 1];
%R2=[cos(t2) -sin(t2) 0 0; sin(t2) cos(t2) 0 0 ; 0 0 1 0; 0 0 0 1];
%T4=[1 0 0 l4; 0 1 0 0; 0 0 1 0; 0 0 0 1];
%T5=[1 0 0 0; 0 1 0 0; 0 0 1 -l5+s; 0 0 0 1];%
%P=[0; 0; 0; 1];
%simplify(R1*T1*T2*T3*R2*T4*T5*P)

syms t1 t2
l1=50; l2=60; l3=15; l4=70; l5= 50; s=10;

for t1=0:0.1:3.14/2
    for t2=0:0.1:3.14/2
        x=l4*cos(t1 + t2) - l2*sin(t1);
        y=l4*sin(t1 + t2) + l2*cos(t1);
        z= l1 + l3 - l5 + s;
        plot3(x,y,z,'*');
        xlabel('x'), ylabel('y'); zlabel('z'); title('Bai2')
        hold on;
    end
end
