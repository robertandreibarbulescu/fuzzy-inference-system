FIS=newfis('Job Application Decision System', 'mamdani', 'min', 'max', 'min', 'max', 'centroid'); 

FIS=addvar(FIS,'input','Education',[40 100]); 
FIS=addmf(FIS,'input',1,'Low','zmf',[40 50]); 
FIS=addmf(FIS,'input',1,'High','smf',[45 70]); 
 

subplot(3,2,1); 
plotmf(FIS,'input',1); 
title('Education');

FIS=addvar(FIS,'input','Skills', [1 10]); 
FIS=addmf(FIS,'input',2,'Non_Relevant','trimf',[-1 0 8]); 
FIS=addmf(FIS,'input',2,'Relevant','trimf',[2 10 11]); 


subplot(3,2,2); 
plotmf(FIS,'input',2); 
title('Skills');

FIS=addvar(FIS,'input','Experience', [1 10]); 
FIS=addmf(FIS,'input',3,'Reasonable','trapmf',[0 0 2.5 4]); 
FIS=addmf(FIS,'input',3,'Good','trapmf',[3 4.5 6.5 8]); 
FIS=addmf(FIS,'input',3,'Extensive','trapmf',[7 8.5 10 11]); 

subplot(3,2,3); 
plotmf(FIS,'input',3); 
title('Experience'); 

FIS=addvar(FIS,'input','CV&Cover_Letter', [0 100]); 
FIS=addmf(FIS,'input',4,'Poor','trapmf',[0 0 30 40]); 
FIS=addmf(FIS,'input',4,'Satisfactory','trapmf',[30 40 50 60]); 
FIS=addmf(FIS,'input',4,'Good','trapmf',[50 60 70 80]); 
FIS=addmf(FIS,'input',4,'Excellent','trapmf',[75 90 100 110]); 

subplot(3,2,4); 
plotmf(FIS,'input',4); 
title('CV&Cover_Letter'); 

FIS=addvar(FIS,'input','Interview', [0 100]); 
FIS=addmf(FIS,'input',5,'Poor','trapmf',[0 0 30 40]); 
FIS=addmf(FIS,'input',5,'Satisfactory','trapmf',[30 40 50 60]); 
FIS=addmf(FIS,'input',5,'Good','trapmf',[50 60 70 80]); 
FIS=addmf(FIS,'input',5,'Excellent','trapmf',[75 90 100 110]); 

subplot(3,2,5); 
plotmf(FIS,'input',5); 
title('Interview');

FIS=addvar(FIS,'output','Application_Decision', [0 100]); 
FIS=addmf(FIS,'output',1,'Reject','zmf',[0 50]); 
FIS=addmf(FIS,'output',1,'Second Interview','gaussmf',[15 50]); 
FIS=addmf(FIS,'output',1,'Job_Offer','smf',[50 100]); 

subplot(3,2,6); 
plotmf(FIS,'output',1); 
title('Application_Decision');

rules = [
0 0 3 -1 2, 2 (1) : 1
0 0 3 -1 3, 3 (1) : 1
0 0 3 -1 4, 3 (1) : 1
0 -1 3 -1 2, 3 (1) : 1
0 0 2 -1 2, 2 (1) : 1
0 0 2 -1 3, 3 (1) : 1
0 0 2 -1 4, 3 (1) : 1
0 2 1 3 3, 3 (1) : 1
0 2 1 4 4, 3 (1) : 1
0 2 1 3 4, 3 (1) : 1
0 2 1 4 3, 3 (1) : 1
1 1 1 1 1, 1 (1) : 1
-1 -1 1 -1 1, 2 (1) : 1
-1 -1 1 -1 -1, 3 (1) : 1
1 2 0 -1 -1, 1 (1) : 1
1 0 3 -1 1, 2 (1) : 1
1 0 0 1 1, 1 (1) : 1
2 2 0 -1 1, 2 (1) : 1
2 2 0 -1 2, 2 (1) : 1
2 2 0 -1 3, 3 (1) : 1
2 2 0 -1 4, 3 (1) : 1
2 0 1 -1 1, 2 (1) : 1
2 0 1 -1 2, 2 (1) : 1
2 0 1 -1 3, 3 (1) : 1
2 0 1 -1 4, 3 (1) : 1
2 0 3 -1 -1, 3 (1) : 1
]
 
FIS = addrule(FIS, rules);


