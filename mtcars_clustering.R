# Hierarchical clustering on the mtcars dataset

# Load data
data <- mtcars

# Standardize variables
pmatrix <- scale(data)

# Calculate distance matrix
d <- dist(pmatrix)

# Perform hierarchical clustering using Ward's method
hc <- hclust(d, method = "ward.D2")

# Plot the dendrogram
plot(hc, main = "Dendrogram of mtcars", xlab = "", sub = "", cex = 0.6)
rect.hclust(hc, k = 4, border = "red")

# Cut tree into 4 clusters
groups <- cutree(hc, k = 4)

# Check how clusters relate to number of cylinders
table(data$cyl, groups)

# Optional: Add cluster labels to original data
data$cluster <- groups

# View first few rows
head(data)
