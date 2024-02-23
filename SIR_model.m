function SIR_model
    % Define parameters
    beta = 0.3;     % Transmission rate
    gamma = 0.1;    % Recovery rate
    
    % Initial conditions
    S0 = 0.99;      % Initial proportion of susceptible individuals
    I0 = 0.01;      % Initial proportion of infectious individuals
    R0 = 0;         % Initial proportion of recovered individuals
    
    % Total population size
    N = 1;
    
    % Time span for simulation
    tspan = [0, 200];
    
    % Solve the system of ODEs
    [t, populations] = ode45(@ode_system, tspan, [S0; I0; R0]);
    
    % Plot the results
    plot(t, populations(:, 1), 'b-', 'LineWidth', 2); hold on;
    plot(t, populations(:, 2), 'r-', 'LineWidth', 2);
    plot(t, populations(:, 3), 'g-', 'LineWidth', 2);
    xlabel('Time');
    ylabel('Proportion of Population');
    title('SIR Model');
    legend('Susceptible', 'Infectious', 'Recovered');
    grid on;
    
    % Define the system of ODEs
    function dPdt = ode_system(t, P)
        S = P(1);   % Susceptible individuals
        I = P(2);   % Infectious individuals
        R = P(3);   % Recovered individuals
        
        dSdt = -beta * S * I / N;
        dIdt = beta * S * I / N - gamma * I;
        dRdt = gamma * I;
        
        dPdt = [dSdt; dIdt; dRdt];
    end
end
