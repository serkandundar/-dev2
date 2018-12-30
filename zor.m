%Matlab IV Homework

%1. SORU

% (a) 
syms z
F = 8- 4*z^(-1) / z^(-2)+ 6*z^(-1)+ 8;
iztrans (F)

% (b)
% Set up vector for zeros
	z = [-2 ; -4 ];

	% Set up vector for poles
	p = [8 ; .5+.5j ; .5-.5j];

	figure(1);
	zplane(z,p);
	title('Pole/Zero Plot for Complex Pole/Zero Plot Example');
    

 
    
 