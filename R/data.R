#' Example kastkaart
#'
#' A dataset containing the information about a hive
#'
#' @format A data frame with 14 rows and 12 variables:
#' \describe{
#'   \item{date}{date of data collection}
#'   \item{origin}{where the queen came from}
#'   \item{mated}{if the queen is mated}
#'   \item{swarm}{if the hive was from a swarm or not}
#'   \item{size}{size of colony, in frames of bees}
#'   \item{location}{current location of the hive}
#'   \item{Frames.of.brood}{amount of full brood frames}
#'   \item{Frames.of.pollen}{amount of full pollen frames}
#'   \item{Frames.of.honey}{amount of full honey frames}
#'   \item{Swarm.cells.present.}{amount of swarm cells in the hive}
#'   \item{Side.note.1}{extra information on what has been done}
#'   \item{Side.note.2}{extra information on what has been done}
#' }
#' @source data has been created using bee_kastkaart() and bee_kastkaart_update() using data collected from a bee colony
"kastkaart"
