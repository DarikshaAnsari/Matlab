% Define parameters
k = 0.1; % Elimination rate constant

% Define the drug assimilation model equation
dCdt = @(t, C) -k * C;

% Define initial condition (initial drug concentration)
C0 = 100; % Initial concentration of the drug in the bloodstream

% Define time span for simulation
tspan = [0, 10]; % Simulate drug concentration over 10 hours

% Solve the differential equation using ode45
[t, C] = ode45(dCdt, tspan, C0);

% Plot the results
plot(t, C, 'b-');
xlabel('Time (hours)');
ylabel('Drug Concentration');
title('Drug Assimilation Model');
grid on;
