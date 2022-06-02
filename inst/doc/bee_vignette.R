## ---- warning=FALSE, message=FALSE, error=FALSE, results='hide'---------------
# install.packages("devtools")
devtools::install_github("Thijmenvanbrenk/beecalculator")

## ----setup--------------------------------------------------------------------
# Load the beecalculator library
library(beecalculator)

## ---- collapse = TRUE, comment = "#>"-----------------------------------------
# the input amount is in full frames. so 2 frames that are half full of bees will become 1 full frame of bees for this function.
bee_winterfood(honey = 3.5, pollen = 2, bees = 16)

## ---- collapse = TRUE, comment = "#>"-----------------------------------------
# data has to be in format "dd/mm/yyyy"
# larvae_size has to be a number between 1 and 3. read explaination above.

# one example without swarm cells
bee_mating_flight(date = "27/04/2022")

# 2 examples with swarm cells
bee_mating_flight(date = "27/04/2022", swarmcells = T, larvae_size = 1)
bee_mating_flight(date = "27/04/2022", swarmcells = T, larvae_size = 3)

## ---- collapse = TRUE, comment = "#>"-----------------------------------------
bee_kastkaart(date = "27/04/2022", size =  6, name = "Truus", swarm = "No", origin = "F1 Bram", mated = "Yes", export = TRUE)
bee_kastkaart(date = "27/04/2022", size =  10, name = "Felix", swarm = "Yes")

## -----------------------------------------------------------------------------
bee_kastkaart_update(file = "Truus_hive.csv", date = "01/05/2022", location = "Eldik", extra1 = "Checked if queen surived split")
bee_kastkaart_update(file = "Truus_hive.csv", date = "07/07/2022", location = "Lienden", size = 17, brood = 11, swarmcells = 2, honey = 12, extra1 = "Harvested honey")
knitr::kable(read.csv("Truus_hive.csv"))

## ---- collapse = TRUE, comment = "#>"-----------------------------------------
knitr::kable(beecalculator::kastkaart)

