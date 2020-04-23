cd /path2data/COVID
load COVID_cases.mat
covid = imread('stay-at-home-4956906.png');

SD = imread('StickDude.png');
SDr = imread('StickDude_red.png');
SDr2 = imread('StickDude_red_r2.png');
SDr1 = imread('StickDude_red_r1.png');
SDr1o = imread('StickDude_red_r1_o.png');

%% Setup
f = figure('units','normalized','outerposition',[0 0 1 1]);
set(f, 'MenuBar', 'none', 'color', 'k');

%% INRTO

ah = gca ;
set(ah,'visible','off','xlim',[0 2],'ylim',[0 2],'Position',[0 0 1 1]) ;
cvd = imshow(covid);

waitforbuttonpress
delete(cvd);

%% Show R0

ah = gca ;
set(ah,'visible','off','xlim',[0 2],'ylim',[0 2],'Position',[0 0 1 1]) ;

th = text(1,1,'R_0','color' , 'w' , 'FontSize' , 80) ;
set(th,'visible','on','HorizontalAlignment','center','VerticalAlignment','middle')
waitforbuttonpress
delete(th);

%% Stick Dude
Stick = imshow(SD);
waitforbuttonpress

delete(Stick)
Stick_sick = imshow(SDr);

waitforbuttonpress

delete(Stick_sick)
Stick_sick_r2 = imshow(SDr2);

waitforbuttonpress

delete(Stick_sick_r2)
Stick_sick_r1 = imshow(SDr1);

waitforbuttonpress

delete(Stick_sick_r1)
Stick_sick_less_r1 = imshow(SDr1o);

waitforbuttonpress
delete(Stick_sick_less_r1)


%% Axis

hAx=axes;
scatter(CASES_3(8,1) , CASES_3(8,4), 'k' , 'fill')
title('COVID-19 Visualisation', 'color' , 'w')

set(hAx, 'color', 'k', 'XColor' , 'w', 'YColor' , 'w', 'linewidth', 4 , 'XScale', 'log' , 'YScale', 'log' , 'FontSize' , 20)
xlim([1 max(CASES_3(:,1))])
ylim([1 max(CASES_3(:,4))])

waitforbuttonpress

xlabel('Total Cases' , 'FontSize' , 30)
waitforbuttonpress

ylabel('Weekly Cases' , 'FontSize' , 30);
hold on

waitforbuttonpress

%% Case of R0 = 3
% % CASES_3 = simulation(50 , 20 , 3);
% scatter(CASES_3(8,1) , CASES_3(8,4) , 70 , 'y' , 'fill')
% 
% for i = 9:length(CASES_3) 
%     title('Infection at R_0 = 3', 'color' , 'w')
%     scatter(CASES_3(i,1) , CASES_3(i,4) , 70 , 'y' , 'fill') 
%     pause(.2)
% end
% 
% plot(CASES_3(:,1) , CASES_3(:,4) , 'y')
% 
% 
% hold on
% 
% waitforbuttonpress

%% Case of R0 = 2
% CASES_2 = simulation(50 , 20 , 2);

scatter(CASES_2(8,1) , CASES_2(8,4) , 70 , 'r' , 'fill')
title('Infection at R_0 = 2 Day 7', 'color' , 'w')
hold on

for i = 9:length(CASES_2)  
    title(['Infection at R_0 = 2 Day ' num2str(i)], 'color' , 'w')
   scatter(CASES_2(i,1) , CASES_2(i,4) , 70 , 'r' , 'fill')
    pause(.2)
end

plot(CASES_2(:,1) , CASES_2(:,4) , 'r')

waitforbuttonpress

%% Case of R0 = 1
% CASES_1 = simulation(50 , 20 , 1.1);

scatter(CASES_1(8,1) , CASES_1(8,4), 70 , 'g' , 'fill')
title('Infection at R_0 = 1 Day 7', 'color' , 'w')
hold on

for i = 9:length(CASES_1)   
    title(['Infection at R_0 = 1 Day ' num2str(i)], 'color' , 'w')
   scatter(CASES_1(i,1) , CASES_1(i,4) , 70 , 'g' , 'fill')
    pause(.05)
end

plot(CASES_1(:,1) , CASES_1(:,4) , 'g')

waitforbuttonpress

%% Case of R0 < 1
% CASES = simulation(50 , 20 , .9);

scatter(CASES(8,1) , CASES(8,4) , 70 , 'w' , 'fill')
title('Infection at R_0 < 1 Day 7', 'color' , 'w')
hold on

for i = 9:length(CASES)  
    title(['Infection at R_0 < 1 Day ' num2str(i)], 'color' , 'w')
   scatter(CASES(i,1) , CASES(i,4) , 70 , 'w' , 'fill') 
    pause(.1)
end

plot(CASES(:,1) , CASES(:,4) , 'w')

waitforbuttonpress

%% REAL CASES

scatter(REAL(8,1) , REAL(8,2) , 70 , 'c' , 'fill')
title('Real Cases (Malta Data) Day 7', 'color' , 'w')
hold on

for i = 9:length(REAL)
    title(['Real Cases (Malta Data) Day ' num2str(i)], 'color' , 'w')
   scatter(REAL(i,1) , REAL(i,2) , 70 , 'c' , 'fill') 
    pause(.2)
end

plot(REAL(:,1) , REAL(:,2) , 'c')

waitforbuttonpress

%% INRTO

delete(gca)

ah = gca ;
set(ah,'visible','off','xlim',[0 2],'ylim',[0 2],'Position',[0 0 1 1]) ;
thanks = text(1,1,'thanks for watching','color' , 'w' , 'FontSize' , 80) ;
set(thanks,'visible','on','HorizontalAlignment','center','VerticalAlignment','middle')