data <- c('106', '107','76', '82', '109','107','115','93' ,'187','95','123 ','125',
'111', '92 ','86', '70', '126','68', '130','129','139','119','115','128',
'100', '186','84', '99', '113','204', '111','141','136','123','90','115',
'98 ', '110','78', '185', '162','178','140','152','173','146','158','194',
'148', '90 ','107','181', '131','75', '184','104','110','80 ','118','82')

data <- as.numeric(data)


smallest = min(data)
largest = max(data)
# calculate range
range = largest - smallest

# calculate number of classes
numberOfClasses = signif(1 + 3.3 * log10(length(data)),1)

# calculate class interval 
classInterval = signif(range / numberOfClasses,)


# calculate where each class should end
breaks <- seq(smallest, largest + 5, by=classInterval )

# divide data according to the breaks calculated above
data.cut <- cut(data, breaks, right = FALSE)

# finally to calculate the frequency
data.freq <- table(data.cut)
sum(data.freq)
