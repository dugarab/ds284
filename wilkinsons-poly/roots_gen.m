a = [1 -210 20615 -1256850 53327946 -1672280820 40171771630  -756111184500  11310276995381  -135585182899530  1307535010540395 ...
    -10142299865511450 63030812099294896 -311333643161390640  1206647803780373360 -3599979517947607200 8037811822645051776 ...
    -12870931245150988800 13803759753640704000 -8752948036761600000 2432902008176640000];
%given above are co-efficient of the Wilkinson’s Polynomials a0 - a20 in
%that order.
%Change these co-efficients relative by 10^-8 and see the effect on roots
%ideally the roots turn out to be 1-20
%maximum change is observed when you change the 15th coefficient in the array

%a(15) = a(15)*(1 + 10^-8); 
%you must do relative change, because the coefficents are so big, an absolute change
%of 10^-7 will have zero effect. Analyse why?

roots_poly = roots(a);
disp(roots_poly);
