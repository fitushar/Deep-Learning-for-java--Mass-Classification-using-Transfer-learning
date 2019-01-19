 image_folder = 'G:\java_dataset\Negative_Class'; %  Enter name of folder from which you want to upload pictures with full path

filenames = dir(fullfile(image_folder, '*.png'));  % read all images with specified extention, its jpg in our case
 total_images = numel(filenames);    % count total number of photos present in that folder

 Resultados1='G:\javaAgaintry\Morethan24Values_NC\';
 Resultados2='G:\javaAgaintry\Lessthan24Values_NC\';
 
 for n = 1:total_images                         
  new_full_name= fullfile(image_folder, filenames(n).name);% it will specify images names with full path and extension
  new_our_images = imread(new_full_name);
  
  if sum(new_our_images(:))>2400000000
     imwrite(new_our_images,[Resultados1,filenames(n).name]);  
  else
     imwrite(new_our_images,[Resultados2,filenames(n).name]);
  end
 end