################################################################################
### set locale
################################################################################


Sys.getlocale()

Sys.setlocale("LC_ALL", "no_NO.UTF-8")




### libraries

library(jsonlite)
library(tidyverse)
# library(tidyjson)
library(writexl)






### data
x.data = jsonlite::fromJSON('C:/Users/BEN/Downloads/OneDrive_2024-06-17/Meta-ARG 20240409_1300_MN44433_FAY98638_f4f80a9b/amr/Barcode02_amr.json')


### structure
str(x.data)




### loop 

x.list.files = list.files("C:/Users/BEN/Downloads/OneDrive_2024-06-17/Meta-ARG 20240409_1300_MN44433_FAY98638_f4f80a9b/amr", full.names = T)

## set up df
# i.filename = 13

rm(x.data.final)
x.data.final = data.frame()

for (i.filename in 1:length(x.list.files)) {
  
  
  x.data = jsonlite::fromJSON(x.list.files[i.filename])
  
  x.data.1 = x.data %>% 
    flatten() %>%
    within(rm('pass')) %>% 
    flatten() %>% 
    lapply(data.frame, stringsAsFactors = FALSE) %>% 
    bind_rows(.id = 'ID') %>% 
    mutate(Barcode = names(x.data)) 
  
  
  x.data.final = rbind(x.data.1, x.data.final)
 
}


write_xlsx(x = x.data.final, path = "output/AMR_conversion/amr_all_converted.xlsx")
