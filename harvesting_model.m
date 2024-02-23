% Define the differential equation
dxdt = @(t, x) r * x * (1 - x/k) - h;

% Define parameters
r = 0.05;  % Growth rate
k = 1000;  % Carrying capacity
h = 0.1;   % Harvesting rate

% Initial population size
xo = 100;

% Time span for simulation
tspan = [0, 100];

% Solve the differential equation
[t_values, x_values] = ode45(dxdt, tspan, xo);

% Plot results
plot(t_values, x_values, 'b-');
xlabel('Time');
ylabel('Population');
title('Harvesting Model with Constant Rate');
grid on;


