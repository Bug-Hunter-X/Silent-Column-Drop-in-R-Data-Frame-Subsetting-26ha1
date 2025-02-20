```r
# This improved code uses dplyr::select to handle missing columns gracefully.
# It will throw an error if any specified column is missing.

library(dplyr)

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols <- c("A", "B", "D")

#Using tryCatch to handle potential errors more gracefully
subset_df <- tryCatch(
  {dplyr::select(df, all_of(cols))},
  error = function(e) {
    warning("Error selecting columns: ",e)
    return(NULL) # Return NULL or handle error appropriately
  }
)

print(subset_df)

# Alternative approach, allowing partial matching with the .name_repair argument
subset_df_partial <- dplyr::select(df, all_of(cols), .name_repair = "minimal")
print(subset_df_partial)
```