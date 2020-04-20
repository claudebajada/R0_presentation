function  infection = new_infection(num , R0)

% infection with a .1 probability
infection = false(num,1);

for i = 1:num
    x=rand;
    if x<R0/7
        infection(i)=true;
    end
end


