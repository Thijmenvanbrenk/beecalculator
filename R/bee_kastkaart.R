#' Creating a kastkaart after making split or catching swarm
#'
#' @param date Date of creation (any format)
#' @param size Size of hive in frames
#' @param name Name of the queen/hive
#' @param swarm Yes or no
#' @param origin Origin of hive
#' @param mated Yes or no
#' @param export TRUE or FALSE
#'
#' @return a file that has the start of a kastkaart
#' @export
#'
#' @examples
#' bee_kastkaart("14/05/2021", 6, "Hennie", "No", "F1 Dikkie", "Yes")
#' bee_kastkaart("2022-02-16", 8, "Tantie", "Yes")
bee_kastkaart <- function(date, size, name, swarm, origin = NA, mated = NA, export = FALSE) {

  # make the new dataframe
  new_hive <- data.frame(date = date,
              origin = origin,
              mated = mated,
              swarm = swarm,
              size = size)

  # changing the rowname
  rownames(new_hive) <- "Day of creation"

  # export as csv
  if (export == TRUE) {

    utils::write.csv(new_hive, here::here(paste0("bees/", name, "_hive.csv")))
  } else {
    print(new_hive)
  }
}
