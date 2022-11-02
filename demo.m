clc,clear,close all
dataxgt=load(['./test_512x512_in/','000001.mat']);
figure('name','original_input_512x512');
imagesc(dataxgt.input);
dataxgt=load(['./test_512x512_gt/','000001.mat']);
figure('name','original_gt_512x512');
mesh(dataxgt.gt);
tic
  map=surfacStitching('./Results_real/');
toc
RES=position2mesh(map);
figure('name','result');
mesh(RES);
figure('name','result-1');
imagesc(dataxgt.gt);
figure('name','result-2');
imagesc(RES);
figure('Name','erro');
mesh(RES-dataxgt.gt)
% inu=RES-dataxgt.gt;
% xc=mat2gray(inu);
% figure('Name','erro1');
% xc=im2bw(xc,0.9)
% imshow(xc);

% dataxgt=load(['./test_512x512_in/','000001.mat']);
% figure('name','original_input_512x512');
% imagesc(dataxgt.input);
% dataxgt=load(['./test_512x512_gt/','000001.mat']);
% figure('name','original_gt_512x512');
% mesh(dataxgt.gt)

% 
% filename='000008';
% dataxgt=load(['./Results_real/',filename,'-results.mat']);
% figure('name','original1');
% imagesc(dataxgt.input);
% outputx1=dataxgt.gt;
% figure('name','gt1 image');
%  mesh(outputx1)
%  dataxgt=load('map1.mat');
%  outputx1=dataxgt.DS;
%  outputx1(1:2,:)=round(outputx1(1:2,:));
%  filename='000010';
% dataxgt=load(['./Results_real/',filename,'-results.mat']);
% figure('name','original2');
% imagesc(dataxgt.input);
%  outputx2=dataxgt.gt;
% figure('name','gt2 image');
%  mesh(outputx2)%����һ��ͼ
%  
%  [m,n]=size(outputx1);%ǰ��һ��ͼ
% outputx2=getData( outputx2,0,1);%�����
% 
%  q=getData2( outputx1,2,2);%ǰ���
%  p=getData2( outputx2,2,1);%�����
% figure('name','gtx image');
% plot3(p(1,:),p(2,:),p(3,:),'rO')
% hold on
% plot3(q(1,:),q(2,:),q(3,:),'BO')
% [Ricp Ticp ER t] = icp(q, p, 15,'Minimize','plane');%����p�ӽ���ǰ��q
% % Ticp(2,1)=Ticp(2,1)+(96-Ticp(2,1))
% M_REST=getData2( outputx2,2,3);%�����
%  figure('name','intial image');
% RES1=position2mesh(M_REST );
% mesh(RES1)
% Dicp = Ricp * M_REST + repmat(Ticp, 1, size(M_REST,2));
% figure('name','DICP image');
% RES=position2mesh(Dicp );
% mesh(RES);
%  DLL=getData2( outputx1,0,2);%�����
%  DS=[DLL,Dicp];
%  gt=DS;
% %  save('map.mat','gt')
% RES=position2mesh(DS);
%  figure('name','total image');
% mesh(RES)
% figure('name','Convergence curve image');
% plot(ER);





















































% filename='000008';
% dataxgt=load(['./Results_real/',filename,'-results.mat']);
% figure('name','original1');
% imagesc(dataxgt.input);
% outputx1=dataxgt.gt;
% figure('name','gt1 image');
%  mesh(outputx1)
%  filename='000009';
% dataxgt=load(['./Results_real/',filename,'-results.mat']);
% figure('name','original2');
% imagesc(dataxgt.input);
%  outputx2=dataxgt.gt;
% figure('name','gt2 image');
%  mesh(outputx2)%����һ��ͼ
%  figure('name','gtx image');
%  [m,n]=size(outputx1);%ǰ��һ��ͼ
%  q=getData( outputx1,2,2);%ǰ���
%  p=getData( outputx2,2,1);%�����
% plot3(p(1,:),p(2,:),p(3,:),'rO')
% hold on
% plot3(q(1,:),q(2,:),q(3,:),'BO')
% [Ricp Ticp ER t] = icp(q, p, 15,'Minimize','plane');%����p�ӽ���ǰ��q
% % Ticp(2,1)=Ticp(2,1)+(96-Ticp(2,1))
% M_REST=getData( outputx2,2,3);%�����
%  figure('name','intial image');
% RES1=position2mesh(M_REST );
% mesh(RES1)
% Dicp = Ricp * M_REST + repmat(Ticp, 1, size(M_REST,2));
% figure('name','DICP image');
% RES=position2mesh(Dicp );
% mesh(RES);
%  DLL=getData( outputx1,0,2);%�����
%  DS=[DLL,Dicp];
%  save('map1.mat','DS');
% RES=position2mesh(DS);
%  figure('name','total image');
% mesh(RES)
% figure('name','Convergence curve image');
% plot(ER);