 image_folder = 'G:\javaAgaintry\training_tp';

 filenames = dir(fullfile(image_folder, '*.png'));  % read all images with specified extention, its jpg in our case
 total_images = numel(filenames);    % count total number of photos present in that folder

 Resultados1='F:\Java_Dataset\All107_images_of_interest\training_set\Traiing_Tp\dimentionless300\';
 Resultados2='F:\Java_Dataset\All107_images_of_interest\training_set\Traiing_Tp\dimentionless300\';
 
 for n = 1:total_images                         
  new_full_name= fullfile(image_folder, filenames(n).name);% it will specify images names with full path and extension
  new_our_images = imread(new_full_name);
  [h,w]=size(new_our_images);
  if (h>=300) && (w>=300)
     imwrite(new_our_images,[Resultados1,filenames(n).name]);  
  else
     imwrite(new_our_images,[Resultados2,filenames(n).name]);
  end
 end