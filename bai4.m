%Tz1(0,0,l1) Rz1(z,-theta1) Tx2(l2,0,0) R1x90(x,90) Tz3(0,0,-l3)
%Rz2(z, -theta2) Tx4(l4,0,0) R2x90(x,-90) Tz5(0,0,l5)
 
syms l1 l2 l3 l4 l5 t1 t2 
%Tz1 = [1 0 0 0; 0 1 0 0; 0 0 1 l1; 0 0 0 1]
%Rz1 = [cos(-t1) -sin(-t1) 0 0; sin(-t1) cos(-t1) 0 0; 0 0 1 0; 0 0 0 1]
%Tx2 = [1 0 0 l2; 0 1 0 0; 0 0 1 0; 0 0 0 1]
%R1x90 = [1 0 0 0; 0 0 -1 0; 0 1 0 0;0 0 0 1]
%Tz3 = [1 0 0 0; 0 1 0 0; 0 0 1 -l3; 0 0 0 1]
%z2 = [cos(-t2) -sin(-t2) 0 0; sin(-t2) cos(-t2) 0 0; 0 0 1 0; 0 0 0 1]
%Tx4 = [1 0 0 l4; 0 1 0 0; 0 0 1 0; 0 0 0 1]
%R2x90 = [1 0 0 0; 0 0 1 0; 0 -1 0 0;0 0 0 1]
%Tz5 = [1 0 0 0; 0 1 0 0; 0 0 1 l5; 0 0 0 1]
 
H = simplify(Tz1*Rz1*Tx2*R1x90*Tz3*Rz2*Tx4*R2x90*Tz5)
 
l1 = 50; l2= 40; l3=10; l4 =40; l5=30; 
 for t1=0:0.1: 2* pi
     for t2=0:0.1:2 * pi
         x =l2*cos(t1) + l3*sin(t1) + l4*cos(t1)*cos(t2) + l5*cos(t1)*sin(t2);
         y = l3*cos(t1) - l2*sin(t1) - l4*cos(t2)*sin(t1) - l5*sin(t1)*sin(t2);
         z= l1 + l5*cos(t2) - l4*sin(t2);
         plot3(x,y,z, '*');
         hold on
     end
 end
 
 
