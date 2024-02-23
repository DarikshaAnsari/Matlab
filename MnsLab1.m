dydt=@(t,y)y*y+t;
y0=1;
h=0.1;
tspan=[0,1];
t_value=tspan(1):h:tspan(2);
y_value=zeros(size(t_value));
y_value(1)=y0;
for i=1:length(t_value)-1
    y_value(i+1)=y_value(i)+h*dydt(t_value(i),y_value(i));
end

figure;
plot(t_value,y_value);