
<!-- README.md is generated from README.Rmd. Please edit that file -->

# beecalculator

<!-- badges: start -->
<!-- badges: end -->

The goal of beecalculator is to help beekeepers make accurate
calculations for bee related subjects

## Installation

You can install the development version of beecalculator from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("Thijmenvanbrenk/beecalculator")
```

## Calculators

This package contains 2 calculating functions:  
1. checking the mating flight details of your hive with
*bee_mating_flight()*

``` r
library(beecalculator)
#> larvae_size is depended on how big the larvae in the swarm cell is: 1 = egg, 2 = small larvae, 3 = big larvae
bee_mating_flight(date = "27/04/2022", swarmcells = T, larvae_size = 3)
#> [1] "The queens will be ripe on 04/05/20 plus 1-2 days"
#> [1] "The queen will go on her mating flight between 09/05/20 and 18/05/20 DO NOT move the hive during this time"
#> [1] "You need to check if the queen is ripe on 01/06/20"

bee_mating_flight(date = "27/04/2022", swarmcells = F)
#> [1] "The queens will be ripe on 11/05/20"
#> [1] "The queen will go on her mating flight between 16/05/20 and 25/05/20 DO NOT move the hive during this time"
#> [1] "You need to check if the queen is ripe on 08/06/20"
```

<br>  
2. calculating how much food is needed before winter with
*bee_winterfood()*

``` r
#> all values are in amount of full frames
bee_winterfood(honey = 5, pollen = 2.5, bees = 11)
#> [1] "This colony is a medium colony and requires"
#> [1] "7.5 more kilos of dry sugar"
#> [1] "this colony has enough pollen for winter"

bee_winterfood(honey = 5, pollen = 1.5, bees = 16)
#> [1] "This colony is a large colony and requires"
#> [1] "12.5 more kilos of dry sugar"
#> [1] "atleast 0.5 more frames of pollen"
```

## kastkaart generators

there are 2 functions present that create and update the kastkaart:  
1. creating the kastkaart with *bee_kastkaart()*

``` r
bee_kastkaart(date = "27/04/2022", size =  6, name =  "Henkie", swarm = "No", mated = "Yes", export = TRUE)
knitr::kable(read.csv("Henkie_hive.csv"))
```

| X               | date       | origin | mated | swarm | size |
|:----------------|:-----------|:-------|:------|:------|-----:|
| Day of creation | 27/04/2022 | NA     | Yes   | No    |    6 |

<br>  
2. updating the kastkaart with *bee_kastkaart_update()*

``` r
bee_kastkaart_update(file = "Henkie_hive.csv", date =  "03/05/2022", location =  "Ochten", honey = 2, extra1 = "Extra checkup to illustrate function")
knitr::kable(read.csv("Henkie_hive.csv"))
```

|   X | date       | origin | mated | swarm | size | location | Frames.of.brood | Frames.of.pollen | Frames.of.honey | Swarm.cells.present. | Side.note.1                          | Side.note.2 |
|----:|:-----------|:-------|:------|:------|-----:|:---------|:----------------|:-----------------|----------------:|:---------------------|:-------------------------------------|:------------|
|   1 | 27/04/2022 | NA     | Yes   | No    |    6 | NA       | NA              | NA               |              NA | NA                   | NA                                   | NA          |
|   2 | 03/05/2022 | NA     | NA    | NA    |   NA | Ochten   | NA              | NA               |               2 | NA                   | Extra checkup to illustrate function | NA          |
