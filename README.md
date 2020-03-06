# STAT3302_Final_Project (Due Friday, 4/17)

# Description
On April 15, 1912, during her maiden voyage, the widely considered “unsinkable” RMS Titanic sank after colliding with an iceberg. Unfortunately, there weren’t enough lifeboats for everyone onboard, resulting in the death of 1502 out of 2224 passengers and crew.

While there was some element of luck involved in surviving, it seems some groups of people were more likely to survive than others.

In this challenge, we ask you to build a predictive model that answers the question: “what sorts of people were more likely to survive?” using passenger data (ie name, age, gender, socio-economic class, etc).
Variable description:  

* Response: 
    + Survived (contains your binary predictions: 1 for survived, 0 for deceased) 

* Other variables 
   + Continuous varaibles: Age, Fare
   + Discrete variables: Sex, SibSp, pclass, Embarked
   + Binary variable: Sex, Survived
   + Factor variables: pclass, Sex, Embarked

|Variable| Description|
|:--------:|:----------|
|PassengerId| (sorted in any order)|
|pclass|	Ticket class	1 = 1st, 2 = 2nd, 3 = 3rd|
|sex|	Sex	|
|Age|	Age in years	|
|sibsp|	# of siblings / spouses aboard the Titanic	|
|parch|	# of parents / children aboard the Titanic	|
|ticket|	Ticket number	|
|fare|	Passenger fare	|
|cabin|	Cabin number|	
|embarked|	Port of Embarkation	C = Cherbourg, Q = Queenstown, S = Southampton|

Note: There are total 11 columns, excluded the Survived as response. However, not all the varaible are useful for prediction, some of them just use for identification purpose, such as PassengerId, Name and ticket. Thus, only the following varaibles will be consider for our suvival prediction purpose: Pclass, Sex, Age, SibSp, Parch, Fare, Embarked.

# Scientific Question:
What sorts of people were more likely to survive the Titanic sinking?

# Group members:
* (Drago)Zhengqi Dong: dong.760@osu.edu
* Jaehyun Han: han.1235@osu.edu
* Shuhan Shen: shen.998@osu.edu
* Yunxiao Wang: wang.9164@osu.edu

# Reference
* Source of dataset: https://www.kaggle.com/c/titanic/data

# TO-DO:
3. What covariates are useful for answering our question? (Plot the graph and give an graphical summary)
4. Model comparison (Which model has the best "Performance"?)
5. Does the models fit well? Explain why?
6. EDA(Exploratory Data Analysis)
7. Processing data: 1) Clean out missing value.
* Option:
   + Cross validation
   + Train, Tune and Ensemble machine learning models


# DONE:
1. Decide the dataset for project? 
    * Analysis must involves Logistic/Poisson regression model. 
    * Should have enough covariates to make an intersting statistical analysis(Q: What does enought means?)
2. The scientific questions to ask?

# Checking list: (Based on Project description)
1. Make sure that you write down a scientific question for your group to answer in your
project. Make sure you answer the question using the results of your statistical analysis.
2. Select a dataset with enough cases so you can adequately estimate the different effects in
your model. Your dataset should have enough covariates to make for an interesting statistical
analysis. Make sure to investigate for possible interaction effects.
3. Exploratory data analysis, as well as model building, model selection, and diagnostics must
be part of your statistical analysis.
4. You should take time to explain the interpretation of your statistical model and to answer
the original scientific question.
5. You may want to include some discussion of your results and ideas for further analysis at
the end of the report. If you have references, format them appropriately.
6. You may include R code in an appendix (not counted in the 5–6 page limit), but no R code
or R summaries can be included in the main report. For example, present your results in
tables and make sure to discuss your results in the text of the report.
7. For the report use a 12pt font with 1.5 spacing (like this document!)
8. Make sure that all students contribute equally in your group. Each student in a group will
be assigned the same grade.

