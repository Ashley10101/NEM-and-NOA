# NEM-and-NOA
Normalization by orientation anisotropy in human V1-V3
## 1. main.m
First run the main file, and the predicted value of the model will be displayed;
There are several free variables need to be set:
### (1) snakes_index & grating_index
These are related index of the corresponding stimulus in the cell, the stimulu  is referred to“Stimulus set 2”
on the website (http://kendrickkay.net/socmodel/). In this expriment, indexes [184 183 182 181] are related 
to snakes, and [179 178 177 176] are related to grating, and in the same category, they are differ with 
density, for example, the density of 184 is lower than index 181. Their corresponding pictures can be viewed 
under the folder ./stimuli
### (2) configure with gabor filter
"ksize" is related to the convolution operation, I set it to 20 by default;
"theta" is the orientaion;
"lambda" is the wavelength;
"sigma" is the variation;
"ratio" is patial aspect ratio;
PS:
I am not very familiar with the gabor function. Except for the "theta" parameter, the rest of the parameters 
are set with reference to the information on the Internet, which may be different from the original settings
of the paper.
### (3) model configure
In NEM model, there are only two free variables "g" and "n", which are used in step 3 to Nonlinearity 
Power-Law; Because this step is used to map the scalar value of the second step in my understanding, it 
will not affect the response relationship of the same model to different stimuli, so the default setting is 1, 
which is different from the setting in the paper.
In NOA model, there are three variables "w", "g" and "n" , I set w to 0.5 in this expirement.

## 2. plotrr.m
This is used to plot the model prediction results, "r1" represents the response of Model NOA to the snake 
stimulus, and  "r1_g" represents the response of Model NOA to the grating stimulus;
"r2" represents the response of Model NEM to the snake stimulus, and  "r2_g" represents the response of 
Model NEM to the grating stimulus

