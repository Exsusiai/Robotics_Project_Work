clc
clear all

R = [1 0 0; 0 0.933 0.3599; 0 -0.3599 0.933];
omega_IMU = [0.7 0.8 0];
R_n = R;
R_no = R;

for i = 1 : 1 : 5
    R_n = R_n + R_n*0.050 * skew(omega_IMU');
    R_no = R_no + R_no*0.050 * skew(omega_IMU');
    R_n = trnorm(R_n);
end

disp('R with normalizing=');
disp(R_n);
disp('R without normalizing=');
disp(R_no);
    