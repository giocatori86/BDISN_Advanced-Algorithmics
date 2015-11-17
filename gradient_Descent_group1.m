%          Gradient Descent                      Assignment Week 7
%          Sander Martijn Kerkdijk               Max Turpijn
%          Course: Behaviour Dynamics in social Networks 
%               Vrije Universiteit Amsterdam 2015
%                    Copying will be punished

% INITIALIZATION

% Load Referenceset (EmpiricalData2)
load EmpiricalData2.mat;

% parameter step
parameter_step = 0.01;

% learning rate
learning_rate = 0.001;

% Number of iterations to find best accurancy
epochs = 100;

% progress of error to plot
error = zeros(1, epochs);

% Parameter initialization: weights (48)
para_values = rand(1, 48);

count = 1;
while (count <= epochs)
    % Calculate SSR for the para values on EmpericalData2 set
    ssr_now = calculate_SSR(para_values,EmpiricalData2);

    error(count) = ssr_now;
        % make a empty sensibility values matrix with zeros of the length
        % of para_values
        sensitivity_values = zeros(1,length(para_values));
        
        % For every element of para_values calculate parameter sensitivity)
        for i = 1 : length(para_values)
            sensitivity_values(i) = calculate_param_sensitivity( para_values, i, parameter_step, EmpiricalData2, ssr_now );
        end
        % For every element of para_values adjust with temporary para_values - learning_rate * sensitivityvalue)
        for i = 1 : length(para_values)
                    para_values(i) = max(0, min(1, ( para_values(i)- learning_rate * sensitivity_values(i) )));
        end
    count = count + 1;
end

% Make Plot
x = (1: 1: count-1);
plot(x, error);
xlabel('epochs');
ylabel('SSR');
title({'Plot of Error within Weights'});

% Show best values in the terminal
disp(para_values);