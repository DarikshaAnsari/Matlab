function ode_solver()
    % Parameters
    b = 0.002;
    y_param = 0.4;

    % Initial conditions
    S0 = 500;
    I0 = 1;
    initial_conditions = [S0; I0];

    % Time span
    tspan = [0, 50];

    % Solve the ODE system
    [t, solution] = ode45(@(t, y) odefun(t, y, b, y_param), tspan, initial_conditions);

    % Extracting S and I from the solution
    S = solution(:, 1);
    I = solution(:, 2);

    % Plotting
    figure;

    % Plot S vs I
    subplot(3, 1, 1);
    plot(S, I, 'LineWidth', 2);
    title('S vs I');
    xlabel('Susceptible Population (S)');
    ylabel('Infected Population (I)');
    grid on;

    % Plot I vs t
    subplot(3, 1, 2);
    plot(t, I, 'LineWidth', 2);
    title('Infected Population (I) vs Time');
    xlabel('Time (t)');
    ylabel('Infected Population (I)');
    grid on;

    % Plot S vs t
    subplot(3, 1, 3);
    plot(t, S, 'LineWidth', 2);
    title('Susceptible Population (S) vs Time');
    xlabel('Time (t)');
    ylabel('Susceptible Population (S)');
    grid on;
end

function dydt = odefun(t, y, b, y_param)
    % ODE system
    S = y(1);
    I = y(2);
    
    dSdt = -b * S * I;
    dIdt = b * S * I - y_param * I;
    
    dydt = [dSdt; dIdt];
end