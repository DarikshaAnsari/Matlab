dpdt=@(p,t)r*p;
% Define parameters
r = 0.05; % Growth rate
N0 = 100; % Initial population size
% Time span for simulation
tspan = [0, 100];

% Solve the differential equation
[t, N] = ode45(dpdt, tspan, N0);

% Plot results
plot(t, N, 'b-');
xlabel('Time');
ylabel('Population');
title('Population Growth Model');
grid on;

% % Define parameters
% r = 0.05;  % Growth rate
% N0 = 100;  % Initial population size
% dt = 0.1;  % Time step
% tspan = [0, 100];  % Time span
% 
% % Initialize arrays to store time and population values
% t_values = tspan(1):dt:tspan(2);
% N_values = zeros(size(t_values));
% N_values(1) = N0;
% 
% % Euler's method iteration
% for i = 1:length(t_values) - 1
%     dNdt = r * N_values(i);  % Compute the growth rate
%     N_values(i + 1) = N_values(i) + dt * dNdt;  % Update population using Euler's method
% end
% 
% % Plot the results
% plot(t_values, N_values, 'b-');
% xlabel('Time');
% ylabel('Population');
% title('Population Growth Model (Euler Method)');
% grid on;


% % Define the differential equation
% dpdt = @(t, p) r * p;
% 
% % Define parameters
% r = 0.05;  % Growth rate
% N0 = 100;  % Initial population size
% tspan = [0, 100];  % Time span
% 
% % Initialize arrays to store time and population values
% t_values = tspan(1):0.1:tspan(2);
% N_values = zeros(size(t_values));
% N_values(1) = N0;
% 
% % Implement the fourth-order Runge-Kutta method
% for i = 1:length(t_values) - 1
%     t = t_values(i);
%     p = N_values(i);
% 
%     % Compute k1, k2, k3, and k4
%     k1 = dpdt(t, p);
%     k2 = dpdt(t + 0.5 * dt, p + 0.5 * dt * k1);
%     k3 = dpdt(t + 0.5 * dt, p + 0.5 * dt * k2);
%     k4 = dpdt(t + dt, p + dt * k3);
% 
%     % Update population using RK4 method
%     N_values(i + 1) = p + (1/6) * dt * (k1 + 2*k2 + 2*k3 + k4);
% end
% 
% % Plot the results
% plot(t_values, N_values, 'b-');
% xlabel('Time');
% ylabel('Population');
% title('Population Growth Model (RK4 Method)');
% grid on;
