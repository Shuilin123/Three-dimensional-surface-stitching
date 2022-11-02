# Three-dimensional-surface-stitching
Full-field phase recovery algorithm based on IPC algorithm.This algorithm solves the problem of high resolution package phase recovery.
## __Three-dimensional-surface-stitching-matlab__ : _Full-field phase recovery algorithm based on Iterative Closest Point
### Introduction
This is aFull-field phase recovery algorithm - based terative Closest Point algorithm
The main package and version of the matlab environment are as follows
```
# Name                    Version         
matlab                    2022a                                
```  
The above environment is successful when running the code of the project. In addition, it is well known that pytorch has very good compatibility (version>=1.0). Thus, __I suggest you try to use the existing matlab environment firstly.__  

---  
## Usage 
### 0) Download Project 

Running```git clone https://github.com/Shuilin123/Three-dimensional-surface-stitching.git```  
The project structure and intention are as follows : 
```
Three-dimensional-surface-stitching			# Source code		
    ├── test_512x512_in			            # dataset
    │   ├── 000001.mat                  # This is a package phase diagram of size 512x512
    ├── test_512x512_gt			            # dataset
    │   ├── 000001.mat                  # This is a real phase diagram of size 512x512
    ├── test_in			            # dataset
    │   ├── 000001.mat                  # This is a 128x128 package phase diagram cut by the cutting algorithm
    │   ├── 000002.mat                  
    │   ├── 000003.mat                  
    │   ├── 000004.mat                  
    │   ├──....
    ├── test_gt			            # dataset
    │   ├── 000001.mat                  # This is a 128x128 real phase diagram cut by the cutting algorithm
    │   ├── 000002.mat                  
    │   ├── 000003.mat                 
    │   ├── 000004.mat                  
    │   ├──....
    ├── dfs.m		 	# depth-first algorithm
    ├── getData2.p			        #Transform 2d matrices into 3D coordinates 
    ├── position2mesh.p		            #This is the reverse of getData2.p
    ├── demo.m		        # main function
    ├── image_split.p		        # This is an image segmentation algorithm
    ├── surfacStitching.p			        #This is a real phase block 3D Mosaic algorithm 
    ├── surfacStitching_Horizontal.p		            # This is a real phase sub - block horizontal 3D Mosaic algorithm
    └── surfacStitching_vertical.p	          # This is a real phase strip vertical 3D stitching algorithm
```
### 1) input
Part of the test diagram is shown her
