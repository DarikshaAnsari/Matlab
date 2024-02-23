dxdt = @(t, x) r * x * (1 - x/k) - alpha*h;
r = 0.05; % Growth rate
K = 1000; % Carrying capacity
alpha = 0.1; % Proportional harvesting rate

% Initial population size
N0 = 100;

% Time span for simulation
tspan = [0, 100];

% Solve the differential equation
[t_values, x_values] = ode45(dxdt, tspan, N0);

% Plot results
plot(t_values, x_values, 'b-');
xlabel('Time');
ylabel('Population');
title('Proportional Harvesting Model');
grid on;