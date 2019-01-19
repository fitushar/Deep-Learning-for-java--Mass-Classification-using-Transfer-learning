image_folder = 'F:\Java_Dataset\All107_images_of_interest\training_set'; %  Enter name of folder from which you want to upload pictures with full path

filenames = dir(fullfile(image_folder, '*.tif'));  % read all images with specified extention, its jpg in our case
 total_images = numel(filenames);    % count total number of photos present in that folder

 for n = 1:total_images
  full_name= fullfile(image_folder, filenames(n).name);% it will specify images names with full path and extension
  our_images = imread(full_name);     % Read images  
  %figure (n)% used tat index n so old figures are not over written by new new figures
  
tileSize = [454,454]; % has to be a multiple of 16.
input_svs_page=1; %the page of the svs file we're interested in loading
input_svs_file=filenames(n).name;%'20587902_8dbbd4e51f549ff0_MG_R_CC_ANON.tif';
[~,baseFilename,~]=fileparts(input_svs_file);
svs_adapter =PagedTiffAdapter(input_svs_file,input_svs_page); %create an adapter which modulates how the large svs file is accessed

tic
fun=@(block) imwrite(block.data,sprintf('%s_%d_%d.png',baseFilename,block.location(1),block.location(2))); %make a function which saves the individual tile with the row/column information in the filename so that we can refind this tile later
blockproc(svs_adapter,tileSize,fun); %perform the splitting
toc
  
%imshow(our_images)                  % Show all images
 end