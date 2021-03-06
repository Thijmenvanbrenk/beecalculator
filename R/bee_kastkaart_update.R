#' Updating kastkaart created with bee_kastkaart() after check up
#'
#' @param file File location from project location
#' @param date Date of checkup
#' @param location Location of the hive
#' @param size Size of the hive in frames
#' @param brood Amount of brood in frames
#' @param swarmcells Amount of swarmcells
#' @param pollen Amount of pollen in frames
#' @param honey Amount of honey in frames
#' @param extra1 Extra note
#' @param extra2 Extra note
#'
#' @return updated version of the kastkaart
#' @export
#'
#' @examples
#' bee_kastkaart("2022-02-16", 8, "Tantie", "Yes", export = TRUE)
#'
#' bee_kastkaart_update("Tantie_hive.csv", "06/25/2021", "Kesteren", 12, 12, extra1 = "checkup honey")
bee_kastkaart_update <- function(file, date, location, size = NA, brood= NA, swarmcells = NA, pollen = NA, honey = NA, extra1 = NA, extra2 = NA) {

  # loading in the file that needs updating
  hive <- utils::read.csv(file = here::here(file), row.names = 1)
  # updating the hive info
  updated_hive <-plyr::rbind.fill(hive, data.frame(date = date,
                                             location = location,
                                             size = size,
                                             "Frames of brood" = brood,
                                             "Frames of pollen" = pollen,
                                             "Frames of honey" = honey,
                                             "Swarm cells present?" = swarmcells,
                                             "Side note 1" = extra1,
                                             "Side note 2" = extra2
                                             ))

#  bee_kastkaart_update(y, "04/04/2022", "Opheusden", 8, extra1 = "Made sure swarm was queenright")
  # exporting the file again
  utils::write.csv(updated_hive, file)
}
