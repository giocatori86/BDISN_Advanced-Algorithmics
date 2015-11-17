%          Random Gradient                  Assignment Week 7
%          Sander Martijn Kerkdijk               Max Turpijn
%          Course: Behaviour Dynamics in social Networks 
%               Vrije Universiteit Amsterdam 2015
%                    Copying will be punished

% INITIALIZATION

load EmpiricalData2.mat;

Diagonal_Random = 0.02;

% Number of iterations to find best Accurancy
epochs = 10000;

% progress of error to plot
error = zeros(1, epochs);

% Parameter initialization: weights (48)
para_values = rand(1, 48);

% Calculate SSR for the para values on EmpericalData2 set
ssr_now = calculate_SSR( para_values, EmpiricalData2 );

% Initialize Count Variable
count = 1;

while (count <= epochs)
    error(count) = ssr_now;
    % Temporary Para Values are Para_values + Randomized value between 0
    % and 1 * Diagonal Random
    temp_para_values = para_values + (rand(1,48)-0.5) * Diagonal_Random   ; 
        
        % For every element of para_values adjust with temporary para_values)
        for i = 1 : length(para_values)
                    temp_para_values(i) = max(0, min(1, temp_para_values(i) ));
           
        end
         % Calculate temporary SSR with the temp para_values on ReferenceSet 
        temp_ssr = calculate_SSR(temp_para_values,EmpiricalData2);
         
        % Calculate Delta with temporary SSR - SSR_now
        delta = temp_ssr - ssr_now ;
        % If Delta < 0
        if ( delta < 0)
            para_values = temp_para_values ;
            
            % ssr_now becomes temporary SSR 
            ssr_now = temp_ssr  ;

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