corr <- function(directory, threshold = 0) {
        file_list <- list.files(directory, full.names = TRUE)
        data <- data.frame()
        mycor <- numeric()
        for (i in 1:length(file_list)) {
                data <- read.csv(file_list[i], header = TRUE)
                data.comp <- data[complete.cases(data),]
                if (nrow(data.comp) > threshold) {
                        mycor <- c(mycor,cor(data.comp[,2], data.comp[,3]))
                }
        }
        mycor
}