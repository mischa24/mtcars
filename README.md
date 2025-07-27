# mtcars - Hierarchical Clustering Analysis

This project performs hierarchical clustering on the well-known `mtcars` dataset using R. The goal is to group similar cars based on their specifications and understand the underlying structure using dendrograms.

## 📌 Dataset
The dataset `mtcars` comes built-in with R and contains specifications for 32 car models, including variables such as:
- Miles/(US) gallon (mpg)
- Number of cylinders (cyl)
- Horsepower (hp)
- Weight (wt)
- Transmission (am)
- and more...

## 📊 Methodology

- The variables are first **standardized** using `scale()`.
- A **distance matrix** is computed using Euclidean distance.
- **Hierarchical clustering** is performed using the `ward.D2` method.
- A **dendrogram** is plotted to visualize cluster formation.
- The dataset is cut into **4 clusters** using `cutree()`.

## 📎 Output

- The cluster assignments allow us to see which car types fall into similar groups.
- For example, small efficient cars cluster together, while high-performance or luxury cars form distinct clusters.

## 🧪 Sample Code

```r
data <- mtcars
pmatrix <- scale(data)
d <- dist(pmatr
