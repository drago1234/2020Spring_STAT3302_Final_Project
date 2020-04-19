

ggplot(full[1:891,], aes(x = Pclass, y=(sum(Survived==1)/sum(Survived)))) +
  geom_point()
# geom_bar(stat='count', position='dodge') +
# scale_x_continuous(breaks=c(1:11)) +
# ggtitle("Family size Vs Survived") + 
# labs(x = 'Family Size') +
# geom_label(stat='count',aes(label=..count..)) +
scale_fill_discrete(name = "Survived") # For the label in the right

data = full[1:891,]

sum(data$Survived==1)
dim(data)[1]

y=full$Survived
n=hiroshima$total
x=hiroshima$midpoint
n_y = n-y
hiro.mat = cbind(y,n-y)
res.glm01=glm(hiro.mat~x,family=binomial(link = "logit"))
summary(res.glm01)



# Convert Fsize to factor variable
full$Fsize[full$Fsize>=5] <- 'large_family' #THis must go first, otherwise it won't work
full$Fsize[full$Fsize==1] <- 'solo'
full$Fsize[full$Fsize==2] <- 'double'
full$Fsize[full$Fsize==3] <- 'Fsize_3'
full$Fsize[full$Fsize==4] <- 'Fsize_4'
full$Fsize <- as.factor(full$Fsize)

plot(x=full[1:891,]$Pclass, y=(sum(full[1:891,]$Survived==0)/dim(full)[1]),xla="midpoint", ylab = "prop of success = y/n")


subset <- select(train, Pclass, Survived, )

# Response variable:
  #- survived (0 == died, 1 == survived)
# Explanatory variables/covaraite of interest:
  # - Pclass
  # - Sex
  # - Age
  # - Fsize

full[1:891,] %>% 
  group_by(Pclass, Survived) %>% 
  summarise(number=n()) %>% 
  mutate(prop = (number/sum(number))) %>% filter(Survived==1)
  


rounded.weight <- round(train$Age*2)/2
survive_table  <- table(train$Age, train$Survived)
prop.weight <- (survive_table/rowSums(train$Age))[,2]




plot(sort(unique(rounded.weight)), prop.weight,
     xlab="weight (to nearest 0.5kg)", ylab="proportion")


















