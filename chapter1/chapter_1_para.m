!δ֪���������Թ滮�������
!�ο����ϣ���ѧ��ģ�㷨��ȫ ˾�ؿ���
a = 0;
c = [-0.05;-0.27;-0.19;-0.185;-0.185];
A = [zeros(4,1),diag([0.025,0.015,0.055,0.026])];
aeq = [1,1.01,1.02,1.045,1.065];
beq = 1;
hold on
while a<0.05
    b = a*ones(4,1);
    [vc,favl] = linprog(c,A,b,aeq,beq,zeros(5,1));
    favl = -favl;
    plot(a,favl,'*r');
    a = a+0.001;
end
xlabel('a');ylabel('value')
    