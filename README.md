# MechaCar_Statistical_Analysis
### Module 15 of Data Analytics Bootcamp

## Linear Regression to Predict MPG

#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

- The Y-Intercept, vehicle length, and ground clearance each provided a non-random amount of variance to the mpg values in the dataset, as indicated in the image below by the triple asterisks (***).

<img width="506" alt="linear_regression_results_summary" src="https://user-images.githubusercontent.com/96350388/163655766-aab43c2a-bc8e-4cd6-9941-15629f6c8266.png">


#### Is the slope of the linear model considered to be zero? Why or why not?

- The slope of the linear model is not considered to be zero. This is indicated by our p-value for the model being equal to 5.35e-11. This is far lower than our 0.05 threshold for significance, which means we can safely reject our null hypothesis and that the slope of our model will not be zero.

#### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

- Our R-Squared value in this model is 0.7149. According to our stats cheat sheet below, any r value above .7 is considered to represent a strong correlation. As a result, we can assume that this linear model does predict mpg of MechaCar prototypes effectively. 

[Stats_Cheat_Sheet.pdf](https://github.com/mdbinger/MechaCar_Statistical_Analysis/files/8499020/Stats_Cheat_Sheet.pdf)


## Summary Statistics on Suspension Coils

#### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The variance of the suspension coils for all lots and for Lot 1 and Lot 2 individually all meet the requirement of not exceeding 100 PSI. As seen below, the variance for all lots is 62.29, and the variance for Lot 1 and Lot 2 are 0.98 and 7.47, respectively. However, Lot 3's variance was well above the 100 PSI threshold, coming in at 170.29. Lot 1 and Lot 2's data was very consistent, with most data points falling right around the mean, while Lot 3 had a large spread of data. This led to Lot 3's variance and standard deviation being far higher than Lot 1 and Lot 2 and failing to meet the design specifications.

<img width="308" alt="total_summary" src="https://user-images.githubusercontent.com/96350388/163655822-3946a347-e596-46a2-aa68-9ea060146f82.png">
<img width="507" alt="lot_summary" src="https://user-images.githubusercontent.com/96350388/163655826-7f6e8ab3-8c81-4d7e-8a99-63ac93860ffd.png">


## T-Tests on Suspension Coils

briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.

- Essentially, only one of the t-tests performed gave us results that were statistically significant (spoiler alert: it was Lot 3). The t-test run on all lots returned a p-value of 0.06, which is very close to being statistically significant, but doesn't quite make the cut, so we cannot safely reject the null hypothesis for all lots and must accept that any variance could simply be random chance. 
<img width="401" alt="t_test_all_lots" src="https://user-images.githubusercontent.com/96350388/163655834-44f823ea-6957-47bd-ab67-4beeb22fca55.png">

- The t-test for Lot 1 was interesting, but not in any way close to rejecting our null hypothesis. In fact, it was essentially the opposite, as the p-value returned from the t-test on Lot 1 was equal to 1. This suggests that any variance in this data is almost certainly due to random chance. 
<img width="401" alt="t_test_lot1" src="https://user-images.githubusercontent.com/96350388/163655839-4cacc13e-b6b6-4b89-8db8-c02dd6972f67.png">

- The t-test for Lot 2 was not so dramatic as Lot 1, but the results were essentially the same. With a p-value returned of 0.61, we can very safely attribute any variance in this data to random chance as well. 
<img width="401" alt="t_test_lot2" src="https://user-images.githubusercontent.com/96350388/163655842-03c01e12-fc03-473e-a706-44e4b1167644.png">

- The t-test for Lot 3 (as I spoiled above) did come back with a p-value below 0.05. The p-value returned from the t-test on Lot 3 was equal to about 0.042, which allows us to reject our null hypothesis and indicates that the variance in this dataset is not random. 
<img width="401" alt="t_test_lot3" src="https://user-images.githubusercontent.com/96350388/163655843-3d3fb2e1-dce9-410b-ae12-ab1833592f01.png">


## Study Design: MechaCar vs Competition

#### Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating. In your description, address the following questions:
1. What metric or metrics are you going to test?

- I would use the following metrics in this study, as I believe they are some of the most pure indicators in performance of a car for the average driver: City MPG, Highway MPG, maintenance cost, and safety rating.

2. What is the null hypothesis or alternative hypothesis?

- The null hypothesis would be that there is no difference between competitors in any metric listed above. More specifically, MechaCar is no different from any of its competitors in vehicle MPG (city and highway), maintenance cost, or safety rating. 

3. What statistical test would you use to test the hypothesis? And why?

- I would first just view some summary statistics to get a general idea for how the competitors compare to the MechaCar. Some factors, like MPG, may be obviously comparable just by looking at means alone. To get a more in-depth look, I would consider running a multiple linear regression for each metric with MechaCar's data being compared to all the competitors at once. To be specific, this would require a multiple linear regression comparing MechaCar to each competitor in both MPGs, maintenance cost, and safety rating.

4. What data is needed to run the statistical test?

- All MPG data would be needed for both city driving and highway driving. Additionally, a considerable amount of records involving upkeep, repair, and replacement for each vehicle would be beneficial for the maintenance cost piece. Lastly, crash test data and official safety scores from verified organizations would be a great set of information to compare safety ratings across all vehicles.
