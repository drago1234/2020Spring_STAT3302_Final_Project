## ======================================================================
## Analysis of the crabs dataset starting with simple factor models.
##
## Peter Craigmile, pfc@stat.osu.edu, Last updated Jan 2017
##
## Jared Huling huling.7@osu.edu, last updated on Dec 2019
## ======================================================================

## ======================================================================
## First define some useful functions
## ======================================================================

logit <- function (ps)
  ## define the logit function.
{
  log(ps / (1 - ps))
}

inv.logit <- function (etas)
  ## define the inverse logit function.
{
  exp(etas) / (1 + exp(etas))
}



## define 'Survived' to be 1 if any passenger survived; 0 if died
Survived <- as.numeric(train$Survived == 1)


## define the variable 'Sex'
## is 0 if Sex is light medium or medium.
## is 1 if color is dark medium or dark.
# Sex <- factor(ifelse(crabs$color <= 2, "not dark", "dark"))
Sex <- factor(train$Sex)

## Redefine the Pclass factor variable ordered as
## 1: Class_1, 2: Class_2, 3: Class_3, Otherwise: Error.
## (factors by default are ordered alphabetically)
Pclass <-
  factor(ifelse(train$Pclass==1, "Class_1",
                ifelse(train$Pclass==2, "Class_2",
                       ifelse(train$Pclass==3, "Class_3", "Error"))),
         levels=c("Class_1", "Class_2", "Class_3"))

## Redefine the Fsize factor variable ordered as
## 1: solo, 2: double, 3: Fsize_3, 4: Fsize_4, 5: large_family
## (factors by default are ordered alphabetically)
Fsize <-
  factor(ifelse(train$Fsize==1, "solo",
            ifelse(train$Fsize==2, "double",
              ifelse(train$Fsize==3, "Fsize_3",
                ifelse(train$Fsize==4, "Fsize_4", "large_family")))),
         levels=c("solo", "double", "Fsize_3", "Fsize_4", "large_family"))

## produce the cross-tabulation - show the table of counts
crosstabs <- table(Sex, Survived)
crosstabs

## show the table of proportions (rounded to 3 dp (decimal places))
round(crosstabs / apply(crosstabs, 1, sum), 3)


## fit the glm (using the alpha_1=0 contrast)
Survived_model1 <- glm(Survived ~ Sex, family=binomial)
summary(Survived_model1)
anova(Survived_model1, test="Chisq")


## fit the glm with all the colors
crabs.color <- glm(has.satellite ~ color.name, family="binomial")
summary(crabs.color)
anova(crabs.color, test="Chisq")





