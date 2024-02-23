beta =0.02;
gamma=0.4;
initial_condition=[500,1]; 
t_span=[0,50];
SI_Model=@(t,u)[-beta*u(1)*u(2); beta*u(1)*u(2)-gamma*u(2)];%define the model
[t,sol]=ode45(SI_Model,t_span,initial_condition); %call ode solver

%plot time vs population
plot(t,sol);
xlabel ('time')
ylabel('Population')
legend('S(t)','I(t)')
%grid on;

%Sus_pop=sol(:;1);
%Inf_pop=sol(:;2);