pollutantmean <- function(directory, pollutant, id = 1:332) {
        file_list <- list.files(directory, full.names = TRUE)
        data <- data.frame()
                for (i in id) {
                        data <- rbind (data, read.csv(file_list[i], header = TRUE))
                        readpollutant <- data[,pollutant]
                        onlygood <- is.na(readpollutant)
                }
        mymean <- mean(readpollutant[!onlygood])
        mymean
}