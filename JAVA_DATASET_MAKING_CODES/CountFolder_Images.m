image_folder = 'G:\javaAgaintry\MorethanOneValues_NC'; %  Enter name of folder from which you want to upload pictures with full path

filenames = dir(fullfile(image_folder, '*.png'));  % read all images with specified extention, its jpg in our case
 total_images = numel(filenames); 