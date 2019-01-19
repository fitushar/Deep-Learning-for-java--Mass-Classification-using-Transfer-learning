%% Fakrul Islam Tushar, MAIA-2018

%% Sort images from different directories and 
%% compare the index value from the groundtruth and image folder
%% Move the common name images to the Desitination folder
%% 
gdt_folder = 'G:\javaAgaintry\gdt_tn'; %  Enter name of folder from which you want to upload pictures with full path

gdt_names = dir(fullfile(gdt_folder, '*.png'));  % read all images with specified extention, its jpg in our case
 gdt_total_images = numel(gdt_names);    % count total number of photos present in that folder

 for gdt = 1:gdt_total_images
  gdt_full_name= fullfile(gdt_folder, gdt_names(gdt).name);% it will specify images names with full path and extension
  gdt_our_images = imread(gdt_full_name);
  gdt_our_images=im2uint16(gdt_our_images);% Read images  
  %figure (n)                          % used tat index n so old figures are not over written by new new figures
  %imshow(our_images)                  % Show all images
 end
 
  image_folder = 'G:\javaAgaintry\realimages'; %  Enter name of folder from which you want to upload pictures with full path

filenames = dir(fullfile(image_folder, '*.png'));  % read all images with specified extention, its jpg in our case
total_images = numel(filenames);    % count total number of photos present in that folder

 for img = 1:total_images
  full_name= fullfile(image_folder, filenames(img).name);% it will specify images names with full path and extension
  our_images = imread(full_name);     % Read images  
  %figure (n)                          % used tat index n so old figures are not over written by new new figures
  %imshow(our_images)                  % Show all images
 end
 
 Resultados='G:\javaAgaintry\training_tp\'; %Destination folder
 Resultados1='G:\javaAgaintry\training_tn\';
   for j=1:gdt_total_images
    for n=1:total_images 
        if strcmp(gdt_names(j).name,filenames(n).name)==1
           new_full_name= fullfile(image_folder, filenames(n).name);% it will specify images names with full path and extension
           new_our_images = imread(new_full_name);
           imwrite(new_our_images,[Resultados1,filenames(n).name]);
%         else
%            new_full_name2= fullfile(image_folder, filenames(n).name);% it will specify images names with full path and extension
%            new_our_images2 = imread(new_full_name2);
%            imwrite(new_our_images2,[Resultados1,filenames(n).name]);  
        end
        
    end
  end 
 