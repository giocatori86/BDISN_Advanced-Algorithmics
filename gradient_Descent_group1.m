load EmpiricalData2.mat;

% Make Empty WeightVector Matrix


% parameter step
parameter_step = 0.01;
% learning rate
learning_rate = 0.001;

% progress of error to plot
epochs = 100;
error = zeros(1, epochs);

% Parameter initialization: weights (48)

para_values = rand(1, 48);

count = 1;
while (count <= epochs)
    % Current value of the sum of squared of residulas: SSRnow
    ssr_now = calculate_SSR(para_values,EmpiricalData2);
    error(count) = ssr_now;
        sensitivity_values = zeros(1,length(para_values));
        
        for i = 1 : length(para_values)
            sensitivity_values(i) = calculate_param_sensitivity( para_values, i, parameter_step, EmpiricalData2, ssr_now );
        end
        
        for i = 1 : length(para_values)
                    para_values(i) = max(0, min(1, ( para_values(i)- learning_rate * sensitivity_values(i) )));
        end
    count = count + 1;
end

x = (1: 1: count-1);
plot(x, error);
xlabel('epochs');
ylabel('SSR');
disp(para_values);