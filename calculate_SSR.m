%          Calculate SSR                         Assignment Week 7
%          Sander Martijn Kerkdijk               Max Turpijn
%          Course: Behaviour Dynamics in social Networks 
%               Vrije Universiteit Amsterdam 2015
%                    Copying will be punished

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