library(ggplot2)
library(khroma)

p <- ggplot(iris) +
    geom_point(aes(x = Sepal.Width,
                   y = Sepal.Length,
                   color = Species)) +
    theme_bw() 


p + scale_color_okabeito()  # pretty good but legend disappears
p + scale_color_highcontrast()  # okay - most like Set1 but red is pinker, and mustardy yellow instead of green
p + scale_color_bright()  # blue, green, pink
p + scale_color_mediumcontrast()  # hard to see on white background
p + scale_color_vibrant()  # meh - two blues?
p + scale_color_muted()  # okay i guess; i do like that purple

# from Tol vignette:
# https://cran.r-project.org/web/packages/khroma/vignettes/tol.html
# bright, contrast, vibrant, and muted color schemes are color-blind safe.
