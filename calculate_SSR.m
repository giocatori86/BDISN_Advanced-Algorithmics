function ssr = calculate_SSR( para_values, ReferenceMatrix)
CurrentMatrix = model_compilation (para_values,ReferenceMatrix);
residuals =  CurrentMatrix - ReferenceMatrix;
ssr = sum(residuals(:).^2);
disp(ssr);
end