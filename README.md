# Underwater-Image-Enhancement

## Install

   You will need to install the following libraries:
    *python = 3.6
    *cv2
    *numpy
    *scipy
    *matplotlib
    *scikit-image
    *natsort
    *math
    *datetime
    *MATLAB

## Running

### GC,HE and ICM:

    -To run any algorithm open the main.py file and change folder path to the respective downloaded location
    -Then you can input your own images in the Dataset folder
    -Run the code by typing the command: python main.py inside the respective algorithm folder
    -The output images will be inside the OutputImages folder

### MATLAB Fusion:

    -Download the MATLAB Fusion folder

    -imageproject.m file contains the source code of MATLAB Fusion method

    -test.m is the source code to implement MATLAB Fusion on all the input images
     simultaneously in a loop.

#### To run for individual images:

    - Open imageproject.m in MATLAB
    - Copy the image you want to enhance in the input folder
    - In line 4, edit the rgb_image name to the name of the image.
    - In line 78, edit the desired output image path and image name.
    - Run the program, output of all the functions will be displayed in multiple matlab
      windows step by step, output image will be saved as png file in the folder specified
      in the previous step.

#### To run the code for all the images simultaneously:

    - Open test.m in MATLAB
    - Copy the images you want to enhance in the input folder
    - In line 1, set the desired input folder path to read the input images.
    - In line 79, set the desired output folder path to save the output images.
    - Run the program, all the images will be saved as png file in the folder specified in
      the previous step.
      
 ## Results:
 
 ### Gamma Correction: 

 ![image](https://user-images.githubusercontent.com/60934824/147821419-cdbbef89-f553-4d5a-8a56-d9354baa7287.png)

 ### Histogram Equalization: 
 
 ![image](https://user-images.githubusercontent.com/60934824/147821466-b6dcb958-2acf-4022-a324-b3c5310197f9.png)
 
 ### Integrated Color Model: 
 
 ![image](https://user-images.githubusercontent.com/60934824/147821482-720e21b5-9711-40f1-b53d-6adfa237e7ac.png)
 
 ### Image Fusion using MATLAB:
 
![image](https://user-images.githubusercontent.com/60934824/147821518-c20e3e7b-6c00-47f4-b86f-5ae0bafcb702.png)



