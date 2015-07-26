# Code Book  

## Output dataset

The dataset is in a wide format with 68 variables (one per column) and 180 observations (one per row). The observations are first grouped by activity and then by subject, which form the first two variables. The remaining data is the mean of each variable for an activity performed by a subject.   

#### Activities  
In the experiment, subjects performed the six different activites with the Samsung Galaxy SII worn on the waist. The six activities were as follows:  
1. Walking  
2. Walking upstairs  
3. Walking downstairs  
4. Sitting  
5. Standing  
6. Lying down  

#### Subjects
In the experiment, the subjects were thirty volunteers between the ages of 19 and 48 years. Each subject was given a unique identifier of a number between 1 and 30

#### Means  
In the original data each variable was normalized and bounded within [-1, 1] so the units of the means are the same. The means were calculated from the data for each subject performing each activity repeatedly. Means were calculated for the mean and standard deviation (std) of each form of measurement that could be extracted from the phones' sensor signals (accelerometer and gyroscope). The following are the variable names for which means were calculated:  
1. mean time domain body acceleration in X  
2. mean time domain body acceleration in Y  
3. mean time domain body acceleration in Z  
4. std time domain body acceleration in X  
5. std time domain body acceleration in Y  
6. std time domain body acceleration in Z  
7. mean time domain gravity acceleration in X  
8. mean time domain gravity acceleration in Y  
9. mean time domain gravity acceleration in Z  
10. std time domain gravity acceleration in X  
11. std time domain gravity acceleration in Y  
12. std time domain gravity acceleration in Z  
13. mean time domain body linear acceleration in X  
14. mean time domain body linear acceleration in Y  
15. mean time domain body linear acceleration in Z  
16. std time domain body linear acceleration in X  
17. std time domain body linear acceleration in Y  
18. std time domain body linear acceleration in Z  
19. mean time domain body orientation in X  
20. mean time domain body orientation in Y  
21. mean time domain body orientation in Z  
22. std time domain body orientation in X  
23. std time domain body orientation in Y  
24. std time domain body orientation in Z  
25. mean time domain body angular velocity in X  
26. mean time domain body angular velocity in Y  
27. mean time domain body angular velocity in Z  
28. std time domain body angular velocity in X  
29. std time domain body angular velocity in Y  
30. std time domain body angular velocity in Z  
31. mean time domain magnitude of body acceleration  
32. std time domain magnitude of body acceleration  
33. mean time domain magnitude of gravity acceleration  
34. std time domain magnitude of gravity acceleration  
35. mean time domain magnitude of body linear acceleration  
36. std time domain magnitude of body linear acceleration  
37. mean time domain magnitude of body orientation  
38. std time domain magnitude of body orientation  
39. mean time domain magnitude of body angular velocity  
40. std time domain magnitude of body angular velocity  
41. mean frequency domain body acceleration in X  
42. mean frequency domain body acceleration in Y  
43. mean frequency domain body acceleration in Z  
44. std frequency domain body acceleration in X  
45. std frequency domain body acceleration in Y  
46. std frequency domain body acceleration in Z  
47. mean frequency domain body linear acceleration in X  
48. mean frequency domain body linear acceleration in Y  
49. mean frequency domain body linear acceleration in Z  
50. std frequency domain body linear acceleration in X  
51. std frequency domain body linear acceleration in Y  
52. std frequency domain body linear acceleration in Z  
53. mean frequency domain body orientation in X  
54. mean frequency domain body orientation in Y  
55. mean frequency domain body orientation in Z  
56. std frequency domain body orientation in X  
57. std frequency domain body orientation in Y  
58. std frequency domain body orientation in Z  
59. mean frequency domain magnitude of body acceleration  
60. std frequency domain magnitude of body acceleration  
61. mean frequency domain magnitude of body linear acceleration  
62. std frequency domain magnitude of body linear acceleration  
63. mean frequency domain magnitude of body orientation  
64. std frequency domain magnitude of body orientation  
65. mean frequency domain magnitude of body angular velocity  
66. std frequency domain magnitude of body angular velocity  

The time domain represents the primary output from the phone's sensor signals and the frequency domain is calculated via a Fast Fourier Transformation from the time domain. Where a measurement has a direction component, it is both split along x, y and z axes and combined as a non-vector magnitude. Exact details of how the original data was obtained can be found in the "feature_info.txt" file and a full list of the orginial measurements in the "features.txt" file, both of which are downloaded with the dataset.  
