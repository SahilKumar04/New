srcFiles = dir(cam1);
image_1=length(srcFiles);
srcFiles2 = dir('T:\dataimage\ankit.jpg');
image_2=length(srcFiles2);
for i = 1 : image_1
       aa = strcat(cam1,srcFiles(i).name);
       a = imread(aa);    %first img
 for j=1:image_2
            bb = strcat('T:\dataimage\ankit.jpg',srcFiles2(j).name);
            b = imread(bb);  %second img
            c = corr2(a,b);           %finding the correlation
            if c==1
                disp('The images are same') % display
            else
                 disp('the images are not same')
 end
 end
end