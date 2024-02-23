logistic_growth = @(t, x)0.2*x - 0.001*x.^2;

% Set the time span
tspan = [0, 200];

% Set the initial population
initialPopulation = 100;

% Use ode45 to solve the logistic growth equation
[t, x] = ode45(logistic_growth, tspan, initialPopulation);

% Plot the solution
plot(t, x)
xlabel('Time (t)')
ylabel('Population (x)')
title('Logistic Growth Model')
grid on;