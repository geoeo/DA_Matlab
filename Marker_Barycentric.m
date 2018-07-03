BA = [1.1307 2.0140 149.905]; %B - A / from A to B
CA = [74.0757 3.9240 99.992];

AC = -CA;
PC = [-50.598 -0.229 -15.874];

PA = [23.4777 3.6950 84.118];

CB = [72.945 1.91 -49.913];
PB = [22.347 1.681 -65.787];

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




