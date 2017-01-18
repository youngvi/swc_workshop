download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "gapminder-FiveYearData.csv")
gapminder <- read.csv("gapminder-FiveYearData.csv")

#making notes on day 2 of software carpentry workshop 18jan17
#changed via RStuio

#then examine
#head
#str
#colnames
#summary
#dim
#View
#nrow
#ncol
#useful commands to examine a new dataframe
#
#step 1: get 2007 data
is_2007 <- gapminder$year == 2007
#step 2: get African countries
is_Africa <- gapminder$continent == 'Africa'
#step 3: subset data frame
africa_2007 <- gapminder[is_2007 & is_Africa, c("country","lifeExp")]

o <- order(africa_2007$lifeExp)
#orders the africa_2007 data by life expectancy
africa_2007[o,]
#sorts the africa_2007 output based on its life expectancy

#plot life expectancy versus per capita CGP
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) + geom_point(aes(size=pop))

