%2d Lt Ashwin Rao
%NENG 685 Fall 18
%Energy Deposition Code
%%This script takes MCNP output file data and calculates energy deposition
%%in the asteroids for different radiation types, energies, and distances
clear
%reading text files of tally data from MCNP
andata=dlmread("allendeneutrondata.txt");
axdata=dlmread("allendexraydata.txt");
indata=dlmread("iceneutrondata.txt");
ixdata=dlmread("icexraydata.txt");
%initialize masses of asteroids
mallende=1.96330E+11;
mice=6.00175E+10;
%%reshaping tally data to group by detonation distance, each group has tally
%%for different energies
%error vectors also created
ayneut=[andata(1:5);andata(6:10);andata(11:15)]*mallende;
aerrorneut=[andata(1:5,2)'.*andata(1:5,1)';andata(6:10,2)'.*andata(6:10,1)';andata(11:15,2)'.*andata(11:15,1)']*mallende;
ayxray=[axdata(1:4);axdata(5:8);axdata(9:12)]*mallende;
aerrorxray=[axdata(1:4,2)'.*axdata(1:4,1)';axdata(5:8,2)'.*axdata(5:8,1)';axdata(9:12,2)'.*axdata(9:12,1)']*mallende;
iyneut=[indata(1:5);indata(6:10);indata(11:15)]*mice;
ierrorneut=[indata(1:5,2)'.*indata(1:5,1)';indata(6:10,2)'.*indata(6:10,1)';indata(11:15,2)'.*indata(11:15,1)']*mice;
iyxray=[ixdata(1:4);ixdata(5:8);ixdata(9:12)]*mice;
ierrorxray=[ixdata(1:4,2)'.*ixdata(1:4,1)';ixdata(5:8,2)'.*ixdata(5:8,1)';ixdata(9:12,2)'.*ixdata(9:12,1)']*mice;
%Bar graph for Allende neutron deposition data
bar(ayneut,'BarWidth',1)
hold on
ngroups = size(ayneut, 1);
nbars = size(ayneut, 2);
%This loop increases bar width and calculates where to put error bars
% Calculating the width for each bar group
groupwidth = min(0.8, nbars/(nbars + 1.5));
for i = 1:nbars
    % Calculate center of each bar
    x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
    errorbar(x, ayneut(:,i), aerrorneut(:,i), 'k', 'linestyle', 'none');
end
%labeling figure
title('Neutron source deposition: Allende meteorite','FontSize',16)
xlabel('Source distance from surface','FontSize',16)
ylabel('E_{dep} (MeV)','FontSize',16)
xticklabels({'1m','10cm','1cm'})
legend({'thermal','500 keV','1 MeV','14.1 MeV','Watt Spectrum'},'FontSize',12)
%Same process for Allende xray deposition data
figure
bar(ayxray,'BarWidth',1)
hold on
ngroups = size(ayxray, 1);
nbars = size(ayxray, 2);
% Calculating the width for each bar group
groupwidth = min(0.8, nbars/(nbars + 1.5));
for i = 1:nbars
    % Calculate center of each bar
    x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
    errorbar(x, ayxray(:,i), aerrorxray(:,i), 'k', 'linestyle', 'none');
end
title('X-Ray source deposition: Allende meteorite','FontSize',16)
xlabel('Source distance from surface','FontSize',16)
ylabel('E_{dep} (MeV)','FontSize',16)
xticklabels({'1m','10cm','1cm'})
legend({'1 keV','5 keV','10 keV','20 keV'},'FontSize',12)
%Same process for ice neutron deposition data
figure
bar(iyneut,'BarWidth',1)
hold on
ngroups = size(iyneut, 1);
nbars = size(iyneut, 2);
% Calculating the width for each bar group
groupwidth = min(0.8, nbars/(nbars + 1.5));
for i = 1:nbars
    % Calculate center of each bar
    x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
    errorbar(x, iyneut(:,i), ierrorneut(:,i), 'k', 'linestyle', 'none');
end
title('Neutron source deposition: Ice','FontSize',16)
xlabel('Source distance from surface','FontSize',16)
ylabel('E_{dep} (MeV)','FontSize',16)
xticklabels({'1m','10cm','1cm'})
legend({'thermal','500 keV','1 MeV','14.1 MeV','Watt Spectrum'},'FontSize',12)
%last block is for ice x ray deposition data
figure
bar(iyxray,'BarWidth',1)
hold on
ngroups = size(iyxray, 1);
nbars = size(iyxray, 2);
% Calculating the width for each bar group
groupwidth = min(0.8, nbars/(nbars + 1.5));
for i = 1:nbars
    % Calculate center of each bar
    x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
    errorbar(x, iyxray(:,i), ierrorxray(:,i), 'k', 'linestyle', 'none');
end
title('X-Ray source deposition: Ice','FontSize',16)
xlabel('Source distance from surface','FontSize',16)
ylabel('E_{dep} (MeV)','FontSize',16)
xticklabels({'1m','10cm','1cm'})
legend({'1 keV','5 keV','10 keV','20 keV'},'FontSize',12)