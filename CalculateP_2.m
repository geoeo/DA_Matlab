%% Calibration
A = [6.5223 68.305 1.182]; % millimeter
C = [80.5980 72.229 101.174];
B = [7.653 70.319 151.087];
P = [30 72 85.3];

%% Racecar
%A = [11.872 139.252 137.829]; % millimeter M1
%C = [11.912 142.632 14.719]; % M2
%B = [-76.258 159.723 20.882]; % M3
%P = [-17.7 146.95 57.86];
%% Calculation

BA = B-A;
CA = C-A;

AC = -CA;
PC = P-C;

PA = P-A;

CB = C-B;
PB = P-B;

ABC = norm(cross(BA,CA));
CAP = norm(cross(AC,PC));
ABP = norm(cross(BA,PA));
BCP = norm(cross(CB,PB));

ABC_Tri = ABC/2.0;
CAP_Tri = CAP/2.0;
ABP_Tri = ABP/2.0;
BCP_Tri = BCP/2.0;

beta = CAP_Tri/ABC_Tri;
gamma = ABP_Tri/ABC_Tri;
alpha = BCP_Tri/ABC_Tri;

unit = alpha+beta+gamma;

P_Obs = alpha*A+beta*B+gamma*C;




