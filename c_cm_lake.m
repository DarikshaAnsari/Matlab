% % Define parameters
% kin = 0.1;    % Pollution inflow rate
% kout = 0.05;  % Pollution outflow rate
% C0 = 0;       % Initial concentration of pollution
% tspan = [0, 100];  % Time span
% dt = 0.1;     % Time step
% 
% % Initialize arrays to store time and pollution concentration values
% t_values_euler = tspan(1):dt:tspan(2);
% C_values_euler = zeros(size(t_values_euler));
% C_values_euler(1) = C0;
% 
% % Perform Euler's method iteration
% for i = 1:length(t_values_euler) - 1
%     dCdt = kin - kout * C_values_euler(i);  % Compute the rate of change of pollution concentration
%     C_values_euler(i + 1) = C_values_euler(i) + dt * dCdt;  % Update pollution concentration using Euler's method
% end
% 
% % Plot the results
% figure;
% plot(t_values_euler, C_values_euler, 'b-');
% xlabel('Time');
% ylabel('Pollution Concentration');
% title('Lake Pollution Model (Euler Method)');
% grid on;

% % Define the differential equation
% dCdt = @(t, C) kin - kout * C;
% 
% % Define parameters
% kin = 0.1;    % Pollution inflow rate
% kout = 0.05;  % Pollution outflow rate
% C0 = 0;       % Initial concentration of pollution
% tspan = [0, 100];  % Time span
% dt = 0.1;     % Time step
% 
% % Initialize arrays to store time and pollution concentration values
% t_values = tspan(1):dt:tspan(2);
% C_values = zeros(size(t_values));
% C_values(1) = C0;
% 
% % Implement the fourth-order Runge-Kutta method
% for i = 1:length(t_values) - 1
%     t = t_values(i);
%     C = C_values(i);
% 
%     % Compute k1, k2, k3, and k4
%     k1 = dCdt(t, C);
%     k2 = dCdt(t + 0.5 * dt, C + 0.5 * dt * k1);
%     k3 = dCdt(t + 0.5 * dt, C + 0.5 * dt * k2);
%     k4 = dCdt(t + dt, C + dt * k3);
% 
%     % Update pollution concentration using RK4 method
%     C_values(i + 1) = C + (1/6) * dt * (k1 + 2*k2 + 2*k3 + k4);
% end
% 
% % Plot the results
% plot(t_values, C_values, 'b-');
% xlabel('Time');
% ylabel('Pollution Concentration');
% title('Lake Pollution Model (RK4 Method)');
% grid on;

% % Define the differential equation
% dCdt = @(t, C) kin - kout * C;
% 
% % Define parameters
% kin = 0.1;    % Pollution inflow rate
% kout = 0.05;  % Pollution outflow rate
% C0 = 0;       % Initial concentration of pollution
% tspan = [0, 100];  % Time span
% 
% % Solve the differential equation using ode45
% [t_values, C_values] = ode45(dCdt, tspan, C0);
% 
% % Plot the results
% plot(t_values, C_values, 'b-');
% xlabel('Time');
% ylabel('Pollution Concentration');
% title('Lake Pollution Model (ODE45 Solver)');
% grid on;
