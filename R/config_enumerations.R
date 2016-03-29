#' Config enumerations
#'
#' @export
#' @param id (integer) family agent identifier. optional
#' @template paging
#' @template curl
#' @param parse (logical) Attempt to parse to data.frame's if possible. Default: \code{TRUE}
#' @return either a data.frame or a list
#' @examples \dontrun{
#' config_enumerations()
#' config_enumerations(id = 3)
#' config_enumerations(id = 3, parse = FALSE)
#'
#' library("httr")
#' x <- config_enumerations(config = progress())
#' x <- config_enumerations(config = verbose())
#' }
config_enumerations <- function(id = NULL, page = 1, limit = 10, parse = TRUE, ...) {
  path <- if (is.null(id)) "config/enumerations" else file.path("config/enumerations", id)
  res <- asp_GET(path, list(page = page, page_size = limit), ...)
  asp_parse(res, parse)
}
