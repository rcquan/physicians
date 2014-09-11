setwd("/Users/Quan/GitHub/physicians/")


url <- "https://data.medicare.gov/views/bg9k-emty/files/QE8tOSxD5tVVN7LcpQE7s9BU4zNsegwD7nJgJLNOaaQ?filename=Physician_Compare_Databases.zip&content_type=application%2Fzip%3B%20charset%3Dbinary"
fileName <- "National_Downloadable_File.csv"
zipName <- "Physician_Compare_Databases"
destFile <- sprintf("%s/%s", zipName, fileName)
zipName <- "Physician_Compare_Databases.zip"
if(!file.exists(filename)){
    download.file(url, zipName, method = "curl")
    unzip(zipfile = zipName, files = destFile)
}
df <- read.csv(destFile)
