```r
# This code attempts to subset a data frame using a character vector of column names,
# but it fails silently if any of the specified columns are missing.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols <- c("A", "B", "D")
subset_df <- df[, cols]
print(subset_df)

# Expected output: A data frame containing columns A and B only. 
# Actual output: A data frame containing only column A, with columns B and D silently dropped.
```