clear;
clc;

function speechrecognition(filename)
voice=wavread(filename);
playsnd("C:\Users\hp-840-g1\Desktop\Project\Theoriginalfile.wav");
sleep(4,'s')
playsnd(filename);
sleep(2,'s')
x=voice;
x=x(1,:);
x=x';


y1=wavread("C:\Users\hp-840-g1\Desktop\Project\testfile.wav");
y1=y1(1,:);
y1=y1';
z1=xcorr(x,y1);
l1=length(z1);
disp("value at 0 index for sample 1");
disp(z1(l1/2+1));
m1=z1(l1/2+1);
t1=-((l1-1)/2):1:((l1-1)/2);
t1=t1';
subplot(5,1,1);
plot(t1,z1);

//title("Correlation between original file and samplefile 1","fontsize",1);


y2=wavread("C:\Users\hp-840-g1\Desktop\Project\testfile1.wav");
y2=y2(1,:);
y2=y2';
z2=xcorr(x,y2);
l2=length(z2);
disp("value at 0 index for sample 2");
disp(z2(l2/2+1));
m2=z2(l2/2+1);
t2=-((l2-1)/2):1:((l2-1)/2);
t2=t2';
subplot(5,1,2);
plot(t2,z2);
//title("Correlation between original file and samplefile 2","fontsize",1);

y3=wavread("C:\Users\hp-840-g1\Desktop\Project\testfile2.wav");
y3=y3(1,:);
y3=y3';
z3=xcorr(x,y3);
l3=length(z3);
disp("value at 0 index for sample 3");
disp(z3(l3/2+1));
m3=z3(l3/2+1);
t3=-((l3-1)/2):1:((l3-1)/2);
t3=t3';
subplot(5,1,3);
plot(t3,z3);
//title("Correlation between original file and samplefile 3","fontsize",1);

y4=wavread("C:\Users\hp-840-g1\Desktop\Project\testfile3.wav");
y4=y4(1,:);
y4=y4';
z4=xcorr(x,y4);
l4=length(z4);
disp("value at 0 index for sample 4");
disp(z4(l4/2+1));
m4=z4(l4/2+1);
t4=-((l4-1)/2):1:((l4-1)/2);
t4=t4';
subplot(5,1,4);
plot(t4,z4);
//title("Correlation between original file and samplefile 4","fontsize",1);

y5=wavread("C:\Users\hp-840-g1\Desktop\Project\testfile4.wav");
y5=y5(1,:);
y5=y5';
z5=xcorr(x,y5);
l5=length(z5);
disp("value at 0 index for sample 5");
disp(z5(l5/2+1));
m5=z5(l5/2+1);
t5=-((l5-1)/2):1:((l5-1)/2);
t5=t5';
subplot(5,1,5);
plot(t5,z5);
//title("Correlation between original file and samplefile 5","fontsize",1);

disp("Thresold Amplitude is")
m6=20;
disp(m6);
a=[m1 m2 m3 m4 m5 m6];
m=max(a);
cc=1;

if m<=m1 then
    cc=0;
    disp("Testfile0 is the perfect match as Testfile0 got highest correlation with the given Samplefile");
    playsnd("C:\Users\hp-840-g1\Desktop\Project\testfile.wav"); 
    sleep(2,"s")
    playsnd("C:\Users\hp-840-g1\Desktop\Project\Accessgranted1.wav");
    
elseif m<=m2 then
    cc=0;
    disp("Testfile1 is the perfect match as Testfile1 got highest correlation with the given Samplefile");
    playsnd("C:\Users\hp-840-g1\Desktop\Project\Accessgranted1.wav"); 
    sleep(2,"s")
    playsnd("C:\Users\hp-840-g1\Desktop\Project\testfile1.wav"); 
    
    
elseif m<=m3 then
    cc=0;
    disp("Testfile2 is the perfect match as Testfile2 got highest correlation with the given Samplefile");
    playsnd("C:\Users\hp-840-g1\Desktop\Project\Accessgranted1.wav");
    sleep(2,"s")
    playsnd("C:\Users\hp-840-g1\Desktop\Project\testfile2.wav"); 
    
    
elseif m<=m4 then
    cc=0;
    disp("Testfile3 is the perfect match as Testfile3 got highest correlation with the given Samplefile");
    playsnd("C:\Users\hp-840-g1\Desktop\Project\Accessgranted1.wav");
    sleep(2,"s")
    playsnd("C:\Users\hp-840-g1\Desktop\Project\testfile3.wav");
    
    
elseif m<=m5 then
    cc=0;
    disp("Testfile4 is the perfect match as Testfile4 got highest correlation with the given Samplefile");
    playsnd("C:\Users\hp-840-g1\Desktop\Project\Accessgranted1.wav");
    sleep(2,"s")
    playsnd("C:\Users\hp-840-g1\Desktop\Project\testfile4.wav"); 
    
end

if cc==1 then
   disp("Not any Testfile got highest correlation than Thresold value")
   playsnd("C:\Users\hp-840-g1\Desktop\Project\denied.wav"); 
end

endfunction

function speechrecognition1(filename)
voice=wavread(filename);

playsnd("C:\Users\hp-840-g1\Desktop\Project\Theoriginalfile.wav")
sleep(4,'s')
playsnd(filename);
sleep(2,'s')

x=voice;
x=x(1,:);
x=x';


y1=wavread("C:\Users\hp-840-g1\Desktop\Project\On.wav");
y1=y1(1,:);
y1=y1';
z1=xcorr(x,y1);
l1=length(z1);
disp("value at 0 index for sample 1");
disp(z1(l1/2+1));
m1=z1(l1/2+1);
t1=-((l1-1)/2):1:((l1-1)/2);
t1=t1';
subplot(4,1,1);
plot(t1,z1);

y2=wavread("C:\Users\hp-840-g1\Desktop\Project\Off.wav");
y2=y2(1,:);
y2=y2';
z2=xcorr(x,y2);
l2=length(z2);
disp("value at 0 index for sample 2");
disp(z2(l2/2+1));
m2=z2(l2/2+1);
t2=-((l2-1)/2):1:((l2-1)/2);
t2=t2';
subplot(4,1,2);
plot(t2,z2);

y3=wavread("C:\Users\hp-840-g1\Desktop\Project\Increasetemp.wav");
y3=y3(1,:);
y3=y3';
z3=xcorr(x,y3);
l3=length(z3);
disp("value at 0 index for sample 3");
disp(z3(l3/2+1));
m3=z3(l3/2+1);
t3=-((l3-1)/2):1:((l3-1)/2);
t3=t3';
subplot(4,1,3);
plot(t3,z3);


y4=wavread("C:\Users\hp-840-g1\Desktop\Project\Decreasetemp.wav");
y4=y4(1,:);
y4=y4';
z4=xcorr(x,y4);
l4=length(z4);
disp("value at 0 index for sample 4");
disp(z4(l4/2+1));
m4=z4(l4/2+1);
t4=-((l4-1)/2):1:((l4-1)/2);
t4=t4';
subplot(4,1,4);
plot(t4,z4);


disp("Thresold Amplitude is")
m5=21;
disp(m5);
a=[m1 m2 m3 m4 m5];
m=max(a);
cc=1;

if m<=m1 then
    cc=0;
    disp("Testfile0 is the perfect match as Testfile0 got highest correlation with the given Samplefile");
    playsnd("C:\Users\hp-840-g1\Desktop\Project\Accessgranted1.wav");
    sleep(2,"s")
    playsnd("C:\Users\hp-840-g1\Desktop\Project\On.wav"); 
    
elseif m<=m2 then
    cc=0;
    disp("Testfile1 is the perfect match as Testfile1 got highest correlation with the given Samplefile");
    playsnd("C:\Users\hp-840-g1\Desktop\Project\Accessgranted1.wav"); 
    sleep(2,"s")
    playsnd("C:\Users\hp-840-g1\Desktop\Project\Off.wav"); 
    
elseif m<=m3 then
    cc=0;
    disp("Testfile2 is the perfect match as Testfile2 got highest correlation with the given Samplefile");
    playsnd("C:\Users\hp-840-g1\Desktop\Project\Accessgranted1.wav");
    sleep(2,"s")
    playsnd("C:\Users\hp-840-g1\Desktop\Project\Increasetemp.wav"); 
    
elseif m<=m4 then
    cc=0;
    disp("Testfile3 is the perfect match as Testfile3 got highest correlation with the given Samplefile");
    playsnd("C:\Users\hp-840-g1\Desktop\Project\Accessgranted1.wav");
    sleep(2,"s")
    playsnd("C:\Users\hp-840-g1\Desktop\Project\Decreasetemp.wav");
    
    
end

if cc==1 then
   disp("Not any Testfile got highest correlation than Thresold value")
   playsnd("C:\Users\hp-840-g1\Desktop\Project\denied.wav"); 
end

endfunction

function check(n)
    select n
    case '1' then
        disp('You chose option 1');
        disp("A 2 digit Number Recongnition System");
        speechrecognition("C:\Users\hp-840-g1\Desktop\Project\testfile.wav");
        
    case '2' then
        disp('You chose option 2');
        disp("AC remote (on/off/increase temp/decrease temp)");
        speechrecognition1("C:\Users\hp-840-g1\Desktop\Project\denied.wav");
        
    else
        disp('You choose wrong number, Please enter again!');
        n1=x_dialog('1. A 2 digit number recongnization  2. AC Remote (on/off) || Enter any Number:','-1')
        check(n1);
    end
endfunction

n=x_dialog('1. A 2 digit number recongnization  2. AC Remote (on/off) || Enter any Number:','-1')
check(n);
