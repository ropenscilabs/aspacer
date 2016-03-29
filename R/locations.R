#' Get locations
#'
#' @export
#' @param id (integer) location identifier. optional
#' @template paging
#' @template curl
#' @param parse (logical) Attempt to parse to data.frame's if possible. Default: \code{TRUE}
#' @return either a data.frame or a list
#' @examples \dontrun{
#' locations()
#' locations(id = 3)
#' locations(id = 3, parse = FALSE)
#' }
locations <- function(id = NULL, page = 1, limit = 10, parse = TRUE, ...) {
  path <- if (is.null(id)) "locations" else file.path("locations", id)
  res <- asp_GET(path, list(page = page, page_size = limit), ...)
  asp_parse(res, parse)
}
