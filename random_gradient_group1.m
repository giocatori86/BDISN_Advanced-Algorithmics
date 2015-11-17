load EmpiricalData2.mat;

Diagonal_Random = 0.02;

% progress of error to plot
epochs = 10000;
error = zeros(1, epochs);

% Parameter initialization: weights (48)

para_values = rand(1, 48);
ssr_now = calculate_SSR( para_values, EmpiricalData2 );
count = 1;

while (count <= epochs)
    % Current value of the sum of squared of residulas: SSRnow
    
    error(count) = ssr_now;
    temp_para_values = para_values + (rand(1,48)-0.5) * Diagonal_Random   ; 
        
        for i = 1 : length(para_values)
            %sensitivity_values(i) = calculate_param_sensitivity( para_values, i, paramter_step, actualFeelData, ssr_now );        
                    temp_para_values(i) = max(0, min(1, temp_para_values(i) ));
           
        end
        temp_ssr = calculate_SSR(temp_para_values,EmpiricalData2);
        delta = temp_ssr - ssr_now ;
        
        if ( delta < 0)
            para_values = temp_para_values ;
            ssr_now = temp_ssr  ;

        end
    count = count + 1;
end

x = (1: 1: count-1);
plot(x, error);
xlabel('epochs');
ylabel('SSR');
disp(para_values);