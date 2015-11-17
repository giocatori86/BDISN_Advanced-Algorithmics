function sensitivity = calculate_param_sensitivity( para_values, index, parameter_step, actualFeelData, ssr_now )

        para_values(index) = max(0, min(1, (para_values(index) + parameter_step)));

ssr = calculate_SSR( para_values, actualFeelData );
 
sensitivity = (ssr - ssr_now) / parameter_step;
end