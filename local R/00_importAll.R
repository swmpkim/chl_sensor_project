library(readxl)
library(dplyr)
library(tidyr)
library(ggplot2)

dat <- read_xlsx(here::here("data", "2021_chla-catalyst_data_all.xlsx"),
                 sheet = "qaqc") %>% 
    mutate(extracted = chla_ugl,
           sensor_rfu = chlorophyll_rfu,
           sensor_ugl = chl_fluor,
           month = lubridate::month(datetime_collected)) %>% 
    filter(!is.na(month))


dat %>% 
    select(extracted, sensor_rfu, sensor_ugl) %>% 
    summary()

plot(ecdf(dat$extracted))
lines(ecdf(dat$sensor_ugl), col = "red")


ggplot(dat) +
    geom_point(aes(x = sensor_ugl, y = extracted, 
                   col = reserve_code))

ggplot(dat) +
    geom_abline(slope = 1, intercept = 0, col = "gray60") +
    geom_point(aes(x = sensor_ugl, y = extracted, 
                   col = reserve_code),
               size = 2, alpha = 0.5) +
    facet_wrap(~month, ncol = 4) +
    # geom_smooth(aes(x = sensor_ugl, y = extracted)) +
    theme_bw() + 
    labs(title = "Extracted vs. sensor chl, ug/L, by month")
