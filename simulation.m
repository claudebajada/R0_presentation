function CASES = simulation(days, starting_cases, R0)

% % total population (Malta)
% total_pop = 500;
% pop = false(total_pop , 1);
% pop_infection = zeros(size(pop));
% pop_recovered = pop_infection;


% Disease lasts average of 7 days
% Over 7 days for every person infected, 2 get infected

% start with one infection (day 1)
total_cases = starting_cases;
active_cases = starting_cases;
new_infections = starting_cases;

day = 2;

while total_cases(day-1) < 500000
    
    new_infections(day,1) = sum(new_infection(active_cases(day-1),R0));
    total_cases(day,1) = total_cases(day-1) + new_infections(day,1);
    
    if day-7 >0
        active_cases(day,1) = active_cases(day-1) - new_infections(day-7);
        active_cases(day,1) = active_cases(day) + new_infections(day,1);
        weekly_cases(day,1) = sum(new_infections(day-7:end));
        
    else
        active_cases(day,1) = total_cases(day,1);
    end
    
    if active_cases(day,1) <= 0
        break
    end
    
    day = day+1;
end

CASES = [total_cases , active_cases , new_infections , weekly_cases];




