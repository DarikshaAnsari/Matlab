% Define the differential equation function
f = @(t, x) x^2 + x + 1;

% Define the time span
t_span = [0, 50];

% Define the initial condition
x0 = 1;

% Euler's method
h = 5.0;  % Step size
t_euler = t_span(1):h:t_span(2);
x_euler = zeros(size(t_euler));
x_euler(1) = x0;

for i = 1:length(t_euler)-1
    x_euler(i+1) = x_euler(i) + h * f(t_euler(i), x_euler(i));
end

% Plot the result
figure;
plot(t_euler, x_euler, '-o', 'DisplayName', 'Euler''s Method');
xlabel('Time');
ylabel('Solution (x)');
title('Euler''s Method');
legend('Location', 'best');
grid on;
