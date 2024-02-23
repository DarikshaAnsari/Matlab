% % Define the logistic growth differential equation
% dPdt = @(t, P, r, K) r * P * (1 - P / K);
% 
% % Define parameters
% r = 0.1;  % Growth rate
% K = 1000; % Carrying capacity
% P0 = 10;  % Initial population size
% tspan = [0, 50];  % Time span
% dt = 0.1;  % Time step
% 
% % Initialize arrays to store time and population values
% t_values_euler = tspan(1):dt:tspan(2);
% P_values_euler = zeros(size(t_values_euler));
% P_values_euler(1) = P0;
% 
% % Perform Euler's method iteration
% for i = 1:length(t_values_euler) - 1
%     t = t_values_euler(i);
%     P = P_values_euler(i);
% 
%     % Compute the growth rate using the logistic growth equation
%     dPdt_current = dPdt(t, P, r, K);
% 
%     % Update population using Euler's method
%     P_values_euler(i + 1) = P + dt * dPdt_current;
% end
% 
% % Plot the results
% figure;
% plot(t_values_euler, P_values_euler, 'b-');
% xlabel('Time');
% ylabel('Population');
% title('Logistic Growth Model (Euler Method)');
% grid on;


% Define parameters
% r = 0.1;  % Intrinsic growth rate
% K = 1000; % Carrying capacity
% N0 = 10;  % Initial population size
% 
% % Define the differential equation
% dNdt = @(t, N) r * N * (1 - N/K);
% 
% % Define time span
% tspan = [0, 100];
% dt = 0.1; % Time step
% 
% % Initialize arrays to store time and population values
% t_values = tspan(1):dt:tspan(2);
% N_values = zeros(size(t_values));
% N_values(1) = N0;
% 
% % Implement RK4 method
% for i = 1:length(t_values) - 1
%     t = t_values(i);
%     N = N_values(i);
% 
%     % Compute k1, k2, k3, and k4
%     k1 = dNdt(t, N);
%     k2 = dNdt(t + 0.5 * dt, N + 0.5 * dt * k1);
%     k3 = dNdt(t + 0.5 * dt, N + 0.5 * dt * k2);
%     k4 = dNdt(t + dt, N + dt * k3);
% 
%     % Update population using RK4 method
%     N_values(i + 1) = N + (1/6) * dt * (k1 + 2*k2 + 2*k3 + k4);
% end
% 
% % Plot the results
% plot(t_values, N_values, 'b-');
% xlabel('Time');
% ylabel('Population');
% title('Logistic Growth Model (RK4 Method)');
% grid on;

% % Define the logistic growth differential equation
% dPdt = @(t, P, r, K) r * P * (1 - P / K);
% 
% % Define parameters
% r = 0.1;  % Growth rate
% K = 1000; % Carrying capacity
% P0 = 10;  % Initial population size
% tspan = [0, 50];  % Time span
% 
% % Solve using ODE45 solver
% [t_values_ode45, P_values_ode45] = ode45(@(t, P) dPdt(t, P, r, K), tspan, P0);
% 
% % Plot the results
% figure;
% plot(t_values_ode45, P_values_ode45, 'g-');
% xlabel('Time');
% ylabel('Population');
% title('Logistic Growth Model (ODE45 Solver)');
% grid on;
% 
