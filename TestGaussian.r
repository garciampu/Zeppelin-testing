# Create the DataFrame
df <- createDataFrame(sqlContext, iris)

# Fit a gaussian GLM model over the dataset.
model <- glm(Sepal_Length ~ Sepal_Width + Species, data = df, family = "gaussian")

# Model summary are returned in a similar format to R's native glm().
summary(model)
##$devianceResiduals
## Min       Max     
## -1.307112 1.412532
##
##$coefficients
##                   Estimate  Std. Error t value  Pr(>|t|)    
##(Intercept)        2.251393  0.3697543  6.08889  9.568102e-09
##Sepal_Width        0.8035609 0.106339   7.556598 4.187317e-12
##Species_versicolor 1.458743  0.1121079  13.01195 0           
##Species_virginica  1.946817  0.100015   19.46525 0           

# Make predictions based on the model.
predictions <- predict(model, newData = df)
head(select(predictions, "Sepal_Length", "prediction"))
##  Sepal_Length prediction
##1          5.1   5.063856
##2          4.9   4.662076
##3          4.7   4.822788
##4          4.6   4.742432
##5          5.0   5.144212
##6          5.4   5.385281
