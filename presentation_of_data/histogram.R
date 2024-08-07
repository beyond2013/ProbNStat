sampleData <-c(7.5, 9.7, 10.3, 10.6,7.7, 4.6, 6.8, 9.3,
8.2, 11.6,10.1, 9.1, 12.8,14.0,7.1, 8.9,
6.2, 12.6,10.0, 9.7, 8.7, 8.1, 6.6, 10.1,
8.9, 5.0, 11.1, 9.3, 5.5, 11.4,8.8, 3.9,
7.8, 10.2,6.5, 6.2, 8.6, 10.6,8.8, 6.0,
5.4, 9.2, 12.5, 10.3,9.6, 11.6,10.7,6.9,
9.4, 12.0,7.8, 6.6, 11.9,10.4,10.8,9.0,
9.9, 9.9, 6.5, 7.4, 10.4,8.1, 6.0, 8.8,
10.9, 7.3,8.7, 8.6, 7.8, 4.6, 7.9, 9.4,
10.8, 7.3,9.3, 7.7, 7.6, 6.6, 7.3, 11.4,
7.4, 8.4, 12.4,9.4, 12.1,12.8,9.3, 10.9)

brks = seq(3.45, 14.45, 1)
hist(sampleData, breaks = brks, ylim = range(0,20), labels = TRUE, main = "Histogram for frequency distribution of annual death rates", xlab="Class Boundaries")
axis(side = 1, at=brks, labels = brks, las=2)

