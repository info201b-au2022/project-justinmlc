# Chart / Data Wrangling for Research Question 3: 
# How does sleep duration and quality impact university students’ academic performance?
library(tidyverse)
library(ggplot2)

df <- read.csv("https://storage.googleapis.com/kagglesdsdata/datasets/
               2302266/3873615/Student%20Study%20data.csv?
               X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=
               gcp-kaggle-com%40kaggle-161607.iam.gserviceaccount.com
               %2F20221110%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=
               20221110T211700Z&X-Goog-Expires=259200&X-Goog-SignedHeaders=
               host&X-Goog-Signature=79c447b06517b21644580f097583e77ecc8ea25
               6fbb7a7b4a94e1fcf5401f0573940d69c6aab358042138bcda3746fb11962
               70a6378d4d7042caa22c05b108d8000925bcf38a065fbcabc7fe1a9bf1c1f
               2ce827ee8421cc4a5606becffc1ca878cecde41638d72c010446f9194bfa
               8d2b670c6c74af3b7d81c1130913cc6965a3a6b5238aecfa646898b19bd3
               58029d6f9c453abf1373deb0dc7792b35355b3d4c90dc637d6c122722ef2
               053e7363154714cb48d3652e5137711ff9795c3aaa8fd70f5107fdd90eb73
               41c00896bdf1934838ddc628d1f72ed981ce6b885f9cbe13804d10c68a2ab
               3545faa72a2100a6023683313666048660e1899704c77765a")
