% Define the system of ODEs
f = @(x, y) x - y; % dx/dt
g = @(x, y) -x - y; % dy/dt

% Define the range of x and y values
x = linspace(-2, 2, 20);
y = linspace(-2, 2, 20);

% Create a grid of x and y values
[X, Y] = meshgrid(x, y);

% Calculate the derivatives dx/dt and dy/dt at each grid point
dxdt = f(X, Y);
dydt = g(X, Y);

% Plot vector field
quiver(X, Y, dxdt, dydt, 'r');

hold on;

% Plot trajectories starting from different initial conditions
for x0 = [-2, -1, 0, 1, 2]
    for y0 = [-2, -1, 0, 1, 2]
        [~, sol] = ode45(@(t, y) [f(y(1), y(2)); g(y(1), y(2))], [0, 10], [x0; y0]);
        plot(sol(:, 1), sol(:, 2));
    end
end

hold off;

xlabel('x');
ylabel('y');
title('Phase Plane Analysis');
axis tight;
grid on;
