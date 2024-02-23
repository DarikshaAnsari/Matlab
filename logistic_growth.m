logistic=@(t,x) 0.08*x*(1-x/600); 

[x,y]=ode45(logistic,[0,120],20);
figure;
plot(x,y,'*');




