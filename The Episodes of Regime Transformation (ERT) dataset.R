# Load the ERT package
library(ERT)

# Load the dataset
data("episodes", package = "ERT")

# View first rows
head(episodes)

# View structure of the data
str(episodes)


tunisia <- subset(episodes, country_name == "Tunisia")
View(tunisia)

data("codebook", package = "ERT")
View(codebook)

names(episodes)

# Copy first 10 rows to clipboard (on Windows)
write.table(head(episodes, 10), "clipboard", sep = "\t", row.names = FALSE)

# Or print in console to copy manually
head(episodes, 10)
