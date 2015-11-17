function ssr = calculate_SSR( para_values, ReferenceMatrix)
% Make a CurrentMatrix with the function Model Compilation
CurrentMatrix = model_compilation (para_values,ReferenceMatrix);
% Calculate residuals CurrentMatrix - ReferenceMatrix
residuals =  CurrentMatrix - ReferenceMatrix;
% Calculate SSR
ssr = sum(residuals(:).^2);
% Display the SSR (Temporary line)
disp(ssr);
end