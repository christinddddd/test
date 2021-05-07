install.packages('tidyverse')
library('tidyverse')



install.packages('babynames')
library('babynames')
# there are four datasets: applicants, babynames, births, lifetables

?applicants
?babynames
?births
?lifetables

library('dplyr')
# filter original data babynames
babynames_taylor <- filter(babynames, name == "Taylor")


#plot

ggplot(data = babynames_taylor, aes(x = year, fill = sex, y = n)) + 
  geom_col() + 
  geom_text(aes(label = n)) +
  ylab("Number of births") + 
  xlab("Year of births")


# for a 16 years old teenager, who born in 2004 or 2005.
# if this teenager names Quinn, hihgly be a male.

select_quinn <- filter(babynames, name == "Quinn", year >= 2000)

ggplot(data = select_quinn) + 
  geom_line(aes(x = year, y = n, colour = sex)) +
  ylab("Number of births") + 
  xlab("Year of births")


babynames_susan <- filter(babynames, name == "Susan")

ggplot(data = babynames_susan, aes(x = year, y = n, colour = sex)) + 
  geom_col() +
  ylab("Number of births") + 
  xlab("Year of births")

babynames_susan1 <- filter(babynames, name == "Susan", year > 1940 & year < 1960)

ggplot(data = babynames_susan1, aes(x = year, fill = sex, y = n)) + 
  geom_col() + 
  geom_text(aes(label = n)) +
  ylab("Number of births") + 
  xlab("Year of births")
