complete <- function(directory, id = 1:332) {
        file_list <- list.files(directory, full.names = TRUE)
        data <- data.frame()
        nobs <- numeric()
        allnobs <- data.frame()
        for (i in id) {
                data <- read.csv(file_list[i], header = TRUE)
                data.comp <- data[complete.cases(data),]
                nobs <- rbind (nobs, nrow(data.comp))
        }
        allnobs <- data.frame(id,nobs)
        allnobs
        }