%2d Lt Ashwin Rao
%NENG 685 Fall 18
%Energy Deposition Depth Profile Code
%%This script processes the tally data from the depth profile MCNP
%%output files
clear
%Allende neutron data block
%initializing data vectors for tallies and masses
mAn=[1.48926E+11  1.96816E+09  1.98543E+09  2.00277E+09  2.02018E+09  2.03767E+09  2.05524E+09 2.07288E+09  2.09060E+09  2.10839E+09  2.12626E+09  2.14420E+09  2.16222E+09 2.18031E+09  2.19848E+09  2.21672E+09  2.23504E+09  2.25344E+09  2.27191E+09  2.29046E+09 2.30908E+09  2.32778E+09  2.34655E+09];
mAn=fliplr(mAn);
dataAn1cm=dlmread('Allende1cmneutronDPdata.txt');
EdataAn1cm=dataAn1cm(:,1);
bardataAn1cm=zeros(23,5);
%the for loops reshape the tally data vector and multiply the cell tally
%by the mass of each cell to get Edep in each cell
for i=0:4
    bardataAn1cm(:,i+1)=flipud(EdataAn1cm(1+(23*i):23+(23*i)));
end
for i=1:23
    bardataAn1cm(i,:)=bardataAn1cm(i,:)*mAn(i);
end
%bar data for Edep in each depth bin
%the axes commands create inset plots to blow up deeper regions for view
xdepth=0:.1:2.2;
bar(bardataAn1cm)
title('Energy deposition depth profile: Allende Neutron Source','FontSize',16)
xticks(.5:1:21.5)
xticklabels(xdepth)
xlabel('Depth from surface (m)','FontSize',16)
ylabel('E_{dep} (MeV)','FontSize',16)
axes('Position',[.3 .2 .6 .6])
bar(bardataAn1cm(9:end,:))
xticks(.5:1:13.5)
xticklabels(xdepth(9:end))
axes('Position',[.48 .3 .4 .4])
bar(bardataAn1cm(16:21,:))
xticks(.5:1:9.5)
xticklabels(xdepth(16:22))
legend({'thermal','500 keV','1 MeV','14.1 MeV','Watt'},'FontSize',12)
%Allende xray data block
%initializing mass and tally vectors
mAx=[ 1.96189E+11  2.35492E+07  2.35511E+07  2.35530E+07  2.35549E+07  2.35568E+07  2.35586E+07];
mAx=fliplr(mAx);
dataAx1cm=dlmread('Allende1cmxrayDPdata.txt');
EdataAx1cm=dataAx1cm(:,1);
bardataAx1cm=zeros(6,4);
for i=0:3
    bardataAx1cm(:,i+1)=flipud(EdataAx1cm(1+(6*i):6+(6*i)));
end
for i=1:6
    bardataAx1cm(i,:)=bardataAx1cm(i,:)*mAx(i);
end
%bar graphs for Edep in each depth bin
xdepth=0:.001:.006;
figure
bar(bardataAx1cm)
xticks(.5:1:6.5)
xticklabels(xdepth)
xlabel('Depth from surface (m)','FontSize',16)
ylabel('E_{dep} (MeV)','FontSize',16)
title('Energy depth profile: Allende X-Ray Source','FontSize',16)
axes('Position',[.3 .2 .6 .6])
bar(bardataAx1cm(3:end,:))
xticks(.5:1:4.5)
xticklabels(xdepth(3:end))
legend({'1 keV','5 keV','10 keV','20 keV'},'FontSize',12)
%Ice neutron data block
%initializing mass and tally data vectors
mIn=[3.68583E+10  1.31624E+09  1.34721E+09  1.37854E+09  1.41023E+09  1.44228E+09  1.47469E+09 1.50746E+09  1.54059E+09  1.57408E+09  1.60793E+09  1.64214E+09  1.67671E+09  1.71164E+09 1.74693E+09  1.78258E+09];
mIn=fliplr(mIn);
dataIn1cm=dlmread('Ice1cmneutronDPdata.txt');
EdataIn1cm=dataIn1cm(:,1);
bardataIn1cm=zeros(16,5);
for i=0:4
    bardataIn1cm(:,i+1)=flipud(EdataIn1cm(1+(16*i):16+(16*i)));
end
for i=1:16
    bardataIn1cm(i,:)=bardataIn1cm(i,:)*mIn(i);
end
%same bar graph of Edep in each depth bin
xdepth=0:.25:4;
figure
bar(bardataIn1cm)
xticks(.5:1:17.5)
xticklabels(xdepth)
xlabel('Depth from surface (m)','FontSize',16)
ylabel('E_{dep} (MeV)','FontSize',16)
title('Energy depth profile: Ice neutron source','FontSize',16)
axes('Position',[.27 .2 .6 .6])
bar(bardataIn1cm(4:end,:))
xticks(.5:1:13.5)
xticklabels(xdepth(4:end))
axes('Position',[.4 .29 .45 .45])
bar(bardataIn1cm(8:end,:))
xticks(.5:1:11.5)
xticklabels(xdepth(8:end))
legend({'thermal','500 keV','1 MeV','14.1 MeV','Watt'},'FontSize',12)
%Ice xray data block
%initialize data vectors
mIx=[5.85886E+10  3.55081E+08  3.56513E+08  3.57948E+08  3.59385E+08];
mIx=fliplr(mIx);
dataIx1cm=dlmread('Ice1cmxrayDPdata.txt');
EdataIx1cm=dataIx1cm(:,1);
bardataIx1cm=zeros(5,4);
for i=0:3
    bardataIx1cm(:,i+1)=flipud(EdataIx1cm(1+(5*i):5+(5*i)));
end
for i=1:5
    bardataIx1cm(i,:)=bardataIx1cm(i,:)*mIx(i);
end
%bar Edep in each depth bin
xdepth=0:.05:.2;
figure
bar(bardataIx1cm)
xlabel('Depth from surface (m)','FontSize',16)
ylabel('E_{dep} (MeV)','FontSize',16)
title('Energy depth profile: Ice X-Ray source','FontSize',16)
xticks(.5:1:5.5)
xticklabels(xdepth)
axes('Position',[.35 .35 .5 .5])
bar(bardataIx1cm(3:end,:))
xticks(.5:1:2.5)
xticklabels(xdepth(3:end))
legend({'1 keV','5 keV','10 keV','20 keV'},'FontSize',12)