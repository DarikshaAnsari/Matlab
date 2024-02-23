function prey_predator_model()
    % Define parameters
    r = 0.1;  % Prey growth rate
    k = 100;  % Carrying capacity for prey
    a = 0.02; % Rate of predation
    b = 0.02; % Predator reproduction rate per prey
    d = 0.2;  % Predator death rate
    
    % Initial conditions
    X0 = 80;
    Y0 = 20;
    initial_conditions = [X0; Y0];
    
    % Solve the system of ODEs
    [t, solution] = ode45(@(t, y) odefun(t, y, r, k, a, b, d), [0, 1000], initial_conditions);
    
    % Plot the results
    plot(t, solution(:, 1), 'b-', t, solution(:, 2), 'r-');
    xlabel('Time');
    ylabel('Population');
    title('Predator-Prey Dynamics');
    legend('Prey (X)', 'Predator (Y)');
    grid on;
end

function dydt = odefun(t, y, r, k, a, b, d)
    X = y(1);
    Y = y(2);
    
    % Differential equations
    dXdt = r*X*(1 - X/k) - a*X*Y;
    dYdt = b*X*Y - d*Y;
    
    dydt = [dXdt; dYdt];
end

