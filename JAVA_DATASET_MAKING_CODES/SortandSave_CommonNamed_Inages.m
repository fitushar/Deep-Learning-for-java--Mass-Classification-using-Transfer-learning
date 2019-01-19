%% Fakrul Islam Tushar, MAIA-2018

%% Sort images from different directories and 
%% compare the index value from the groundtruth and image folder
%% Move the common name images to the Desitination folder
%% 
gdt_folder = 'C:\SKINLESIONSEGMENTATION\grabcut_hsv_bw'; %  Enter name of folder from which you want to upload pictures with full path

gdt_names = dir(fullfile(gdt_folder, '*.png'));  % read all images with specified extention, its jpg in our case
 gdt_total_images = numel(gdt_names);    % count total number of photos present in that folder

 for gdt = 1:gdt_total_images
  gdt_full_name= fullfile(gdt_folder, gdt_names(gdt).name);% it will specify images names with full path and extension
  gdt_our_images = imread(gdt_full_name);     % Read images  
  %figure (n)                          % used tat index n so old figures are not over written by new new figures
  %imshow(our_images)                  % Show all images
 end
 
image_folder = 'C:\Users\Fakrul-IslamTUSHAR\Downloads\ISIC-2017_Training_Part1_GroundTruth'; %  Enter name of folder from which you want to upload pictures with full path

filenames = dir(fullfile(image_folder, '*.png'));  % read all images with specified extention, its jpg in our case
total_images = numel(filenames);    % count total number of photos present in that folder

 for img = 1:total_images
  full_name= fullfile(image_folder, filenames(img).name);% it will specify images names with full path and extension
  our_images = imread(full_name);     % Read images  
  %figure (n)                          % used tat index n so old figures are not over written by new new figures
  %imshow(our_images)                  % Show all images
 end
 
 Resultados='C:\SKINLESIONSEGMENTATION\rio'; %Destination folder
 for j=1:gdt_total_images
    for n=1:img
        if filenames(n).name(1:12)==gdt_names(j).name(1:12)
         new_full_name= fullfile(image_folder,filenames(n).name(1:12));% it will specify images names with full path and extension
         new_our_images = imread(new_full_name);  
         imwrite(new_our_images,[Resultados,gdt_names(j).name]);  
        end
        
    end
 end 
 