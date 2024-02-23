% Define parameters
rA = 0.1;  % Growth rate of force A
rB = 0.2;  % Growth rate of force B
k = 0.05;  % Interaction parameter

% Define the Battle Model equations
dAdt = @(t, A, B) rA * A - k * B;
dBdt = @(t, A, B) rB * B - k * A;

% Define initial conditions
A0 = 100;  % Initial size of force A
B0 = 120;  % Initial size of force B

% Define time span for simulation
tspan = [0, 50];

% Solve the system of ODEs using ode45
[t, y] = ode45(@(t, y) [dAdt(t, y(1), y(2)); dBdt(t, y(1), y(2))], tspan, [A0; B0]);

% Plot the results
plot(t, y(:, 1), 'b-', t, y(:, 2), 'r-');
xlabel('Time');
ylabel('Size of Forces');
title('Battle Model');
legend('Force A', 'Force B');
grid on;
