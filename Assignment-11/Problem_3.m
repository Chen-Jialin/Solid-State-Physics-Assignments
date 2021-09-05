clear;clc;close all;
% 二维正方形晶格中自由电子的色散关系
figure(1)
G = 4 * pi;
[kx,ky] = meshgrid(-G / 2:G / 100:G / 2);
E1 = kx.^2 + ky.^2;
for i = 1:1:101
    for j = 1:1:101
        if ky(i,j) < kx(i,j)
            if ky(i,j) < -kx(i,j)
                E2(i,j) = kx(i,j)^2 + (ky(i,j) + G)^2;
            else
                E2(i,j) = (kx(i,j) - G)^2 + ky(i,j)^2;
            end
        else
            if ky(i,j) < -kx(i,j)
                E2(i,j) = (kx(i,j) + G)^2 + ky(i,j)^2;
            else
                E2(i,j) = kx(i,j)^2 + (ky(i,j) - G)^2;
            end
        end
    end
end
% mesh(kx,ky,E1)
% hold on
% mesh(kx,ky,E2)

% 在周期势场微扰
VG = 50;
E1_perturbed = ((E1 + E2) - sqrt((E1 - E2).^2 + VG^2)) / 2;
E2_perturbed = ((E1 + E2) + sqrt((E1 - E2).^2 + VG^2)) / 2;
mesh(kx,ky,E1_perturbed)
hold on
mesh(kx,ky,E2_perturbed)
xlabel('k_x / (nm^{-1})','interpreter','tex')
ylabel('k_y / (nm^{-1})','interpreter','tex')
zlabel('E (单位: (hbar / 2m)^2)')

% 沿高对称线Gamma-M-X-Gamma的色散关系
figure(2)
for i = 1:1:51
    k(i) = sqrt(2) * G / 100 * i;
    E3(i) = E1_perturbed(50 + i,50 + i);
    E4(i) = E2_perturbed(50 + i,50 + i);
end
for i = 1:1:51
    k(50 + i) = k(50) + G / 100 * i;
    E3(50 + i) = E1_perturbed(101,102 - i);
    E4(50 + i) = E2_perturbed(101,102 - i);
end
for i = 1:1:51
    k(100 + i) = k(101) + G / 100 * i;
    E3(100 + i) = E1_perturbed(102 - i,51);
    E4(100 + i) = E2_perturbed(102 - i,51);
end
plot(k,E3)
hold on
plot(k,E4)
grid on
xlim([k(1),k(end)])
ylim([min(E3),max(E4)])
xticks([k(1) k(51) k(101) k(151)])
xticklabels({'\Gamma','M','X','\Gamma'})
ylabel('E (单位: (hbar / 2m)^2)')