dydt = @(t,y) y*y+t;
y0=1; 
h=0.1;
tspan = [0,1]; 
t_values = tspan(1):h:tspan(2);
y_values = zeros(size(t_values));
y_values(1) = y0;
for i = 1:length(t_values) - 1
    y_values(i + 1) = y_values(i) + h * dydt(t_values(i), y_values(i));
end

figure;
plot(t_values,y_values);