% ------------------------------
% Submitted by: Christopher Stockdale 
%
% Credit to: Prof Kindy and Sources
% 
% I affirm that the creation and modification
% of this submission is my own work
% ------------------------------

close all
clear
clc
format long

%Define general variables
N1 = 'Old SRB Design';
L1 = 149.16;
D1 = 12.17;
M1 = 1100000;
bars = '--------------------------------------';


%Define equation variables
R1 = D1/2;
V1 = pi*(R1^2)*L1;
CM1 = (M1/2.2046);

%Define Density (Den)
Den = CM1 / V1;
rc = 1;

while rc == 1
    clc
    fprintf('SRB Project\n\n\n');
    L2 = str2num('a');
    D2 = str2num('a');
    
    while length(L2) == 0 || L2 < 0
        L2 = str2num(input('Length of SRB (feet): ', 's'));
    end
    
    while length(D2) == 0 || D2 < 0
        D2 = str2num(input('Diameter of SRB (feet): ', 's'));
    end
    if length(L2) == 1 || length(D2) == 1
        N2 = input('Describe the change in dimensions: ', 's');
        %Define new equation variables
        R2 = (D2/2);
        V2 = (pi*(R2^2)*L2);
        CM2 = (V2 * Den);
        M2 = (CM2 * 2.2046);
        fprintf('\n%-20s\t%15s\t\t\t\t\t%s\n', '', 'Original Values', N2);
        fprintf('%-.20s\t\t\t\t\t\t%-.15s\t\t\t\t%-.15s\n', '', bars, bars);
        fprintf('%-20s\t%10.2f feet\t\t\t\t%10.2f feet \n', 'Length', L1, L2);
        fprintf('%-20s\t%10.2f feet\t\t\t\t%10.2f feet\n', 'Diameter', D1, D2);
        fprintf('%-20s\t%12.0f lb\t\t\t\t%12.0f lb \n', 'Propellant (lb)', M1, M2);
        fprintf('%-20s\t%12.0f kg\t\t\t\t%12.0f kg \n', 'Propellant (kg)', CM1, CM2);
        rc = input('\n\nwould you like to repeat the calculations (Yes/No)? ', 's');
    else
        fprintf('\n ERROR: Please Restart and try again!')
        rc = 0
    end
    
    switch rc
        case  {'Yes', 'yes', 'Y', 'y', 'YES', 'yEs', 'YeS', 'yeS', 'YEs', 'yES'};
            rc = 1;
        otherwise
            rc = 0;
    end        
    
    %Output new parameters to user
    
end

clc
fprintf('SRB Project\n\n\n');
fprintf('Goodbye!\n\n');



