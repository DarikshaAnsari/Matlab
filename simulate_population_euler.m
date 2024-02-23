function simulate_population_euler()
    N0 = 1000;  
    b = 8;     
    d = 2;      
    t = 20;     
    T = 4;      
    dt = 0.1;   
    N_prev = N0;
    for i = 1:100
        births = b * N_prev;
        deaths = d * N_prev;
        trapped = t * T;
        N_next = N_prev + ((births - deaths) - trapped) * dt;
        fprintf('Time: %.2f months, Population: %.2f\n', i*dt, N_next);
        N_prev = N_next;
    end
end
