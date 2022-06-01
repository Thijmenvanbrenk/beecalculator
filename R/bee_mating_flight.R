#' calculate important dates for swarming.
#'
#' @param date Date a split was made, in dd/mm/yyyy format.
#' @param swarmcells If there were swarmcells present.
#' @param larvae_size Choose between 1 and 3: 1 = eggs, 2 = small larvae, 3 = big larvae. (only applicable for hives with swarmcells present)
#'
#' @return 3 dates: 1 for when the queen is ripe, 1 for when the queen goes on mating flight, 1 for the day you can check the hive again.
#' @export
#'
#' @examples
#' bee_mating_flight("01/06/2022", swarmcells = TRUE, larvae_size = 2)
#' bee_mating_flight("27/04/2022")
bee_mating_flight <- function(date, swarmcells = FALSE, larvae_size = NA) {

  # changing date type
  todays_date <- as.Date(date, "%d/%m/%y")

  # calculating the day of breaking
  if (swarmcells == T) {
    if (larvae_size == 1) {
    date_of_breaking <- as.Date(todays_date) + 13
    } else if (larvae_size == 2) {
      date_of_breaking <- as.Date(todays_date) + 10
    } else {
      date_of_breaking <- as.Date(todays_date) + 7
    }
  } else {
    date_of_breaking <- as.Date(todays_date) + 14
  }
  # chaning date type again
  date_of_breakings <- format(date_of_breaking, "%d/%m/%y")

  if (swarmcells == T) {
    print(paste("The queens will be ripe on", date_of_breakings, "plus 1-2 days"))
  } else {
    print(paste("The queens will be ripe on", date_of_breakings))
  }
  print(paste("The queen will go on her mating flight between", format(date_of_breaking + 5, "%d/%m/%y"), "and", format(date_of_breaking + 14, "%d/%m/%y"), "DO NOT move the hive during this time"))
  print(paste("You need to check if the queen is ripe on", format(date_of_breaking + 28, "%d/%m/%y")))
}
