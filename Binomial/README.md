# binomial133 Package


- Author Name: Jiani Song

----
## Overview :

The package `"binomial133"` is a minimal implementation for calculating the relative probability of number of successes in total trials by using the given number of trials, successes and probability. 

## Steps:

#### 1) Choose inputs for binomial variables 

You can choose inputs by using the function `bin_choose(n,k)`, where n is the total number of trials, and k is the number of successes in n trials.                     

#### 2) Get the probability with the given inputs (successes,number of trials,and probability)         

After choosing the inputs (successes,number of trials,and probability), you will get the probability by using the function `bin_probability(success, tirlas, prob)`.     

#### 3) Get a dataframe with the given inputs (number of trials and probability)      
 
After choosing the inputs (number of trials and probability), you will get a dataframe with consequtive number of trials from 0 to your inputs(trials) and their corresponding probability by busing the function `bin_distribution(trials,prob)` .         


#### 4) Plot the probability dataframe.          

Plotting the histogram of probability dataframe we got before by using the function `plot()`.         

#### 5) Getting cumulative probabilities for all possible successes values.      

After choosing the inputs (number of trials and probability), you will get a dataframe with consequtive number of trials from 0 to your inputs(trials) and their corresponding probability and cumulative probability by using the function `bin_cumulative(trials,prob)` .     

#### 6) Plot cumulative probability distribution     
 
Plotting the probability and cumulative dataframe we got before by using the function `plot()`.        


#### 7) Create a `binomial variable` with your desired inputs (number of trials and probability)  

You can create a`"bin_var` with the function `bin_variable(trials,prob)`  

#### 8) Get a summary of your binomial variable          

You can use the function `summary()` to get a summary of your binomial variable.   

#### 9) Various measure of your binomial variable.       

If you want to explore more and get the details of your binomial variable, you can use the following measure functions.         

`bin_mean` for the mean of your desired binomial diribution.        
`bin_variance` for the variance of your desired binomial diribution.            
`bin_mode` for the mode of your desired binomial diribution.                
`bin_skewness` for the skewness of your desired binomial diribution.            
`bin_kurtosis` for the mean of your desired binomial diribution.       

## Motivation           

This package has been developed to illustrate the usage of Binomial Package.  


## Installation      

development version from GitHub:       
install.packages("devtools")       

install "binomial133" (without vignettes)    
devtools::install_github("foldername/binomial133")     

install "binomial133" (with vignettes)     
devtools::install_github("foldername/binomial133", build_vignettes = TRUE)       


## Usage                     

First, loading the package using library(Binomial).

Second, choosing the function you want to test.       

Third, choosing your input, such as number of trials, number of successes and probability.         
      
Fourth, you can get the output with your inputs.    

The followings are the examples of using my binomial133 package.       

`bin_choose(n=10,k=1)`                 
`bin_probability(1,10,0.1)`          
`bin_dis <- bin_distribution(trials = 2, prob = 0.2)`      
`plot(bin_dis)`       
`bin_cum <- bin_cumulative(5,0.1)`     
`plot(bin_cum)`            
`bin_example <- bin_variable(2,0.1)`         
`summary(bin_example)`          
`bin_mean(2,0.1)`   
`bin_variance(2,0.1)`         
`bin_mode(10,0.1)`     
`bin_skewness(10,0.1)`     
`bin_kurtosis(10,0.1)`      














