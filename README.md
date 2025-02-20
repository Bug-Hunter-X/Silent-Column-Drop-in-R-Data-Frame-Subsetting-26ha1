# Silent Column Drop in R Data Frame Subsetting

This repository demonstrates a common, yet easily overlooked, error in R when subsetting data frames using character vectors.  If the specified column names don't all exist, the missing columns are dropped without any warning or error message, potentially leading to unexpected results and difficult-to-debug issues. 

The `bug.R` file shows the problematic code, while `bugSolution.R` provides a solution using `dplyr::select` for safer subsetting.