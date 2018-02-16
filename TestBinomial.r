# Create the DataFrame
df <- createDataFrame(sqlContext, iris)
training <- filter(df, df$Species != "setosa")

# Fit a binomial GLM model over the dataset.
model <- glm(Species ~ Sepal_Length + Sepal_Width, data = training, family = "binomial")

# Model coefficients are returned in a similar format to R's native glm().
summary(model)
##$coefficients
##               Estimate
##(Intercept)  -13.046005
##Sepal_Length   1.902373
##Sepal_Width    0.404655
