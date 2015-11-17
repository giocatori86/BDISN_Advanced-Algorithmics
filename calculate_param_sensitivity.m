%          Sensitivity Calculation               Assignment Week 7
%          Sander Martijn Kerkdijk               Max Turpijn
%          Course: Behaviour Dynamics in social Networks 
%               Vrije Universiteit Amsterdam 2015
%                    Copying will be punished


function sensitivity = calculate_param_sensitivity( para_values, index, parameter_step, actualFeelData, ssr_now )
        % Higher para_value with a given ParameterStep
        para_values(index) = max(0, min(1, (para_values(index) + parameter_step)));

% Calculate new SSR with change in para_value)
ssr = calculate_SSR( para_values, actualFeelData );

% Calculate sensitivity by SSR- SSR_now / Parameterstep 
sensitivity = (ssr - ssr_now) / parameter_step;
end