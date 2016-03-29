#' Get repositories
#'
#' @export
#' @param id (integer) location identifier. optional
#' @param parse (logical) Attempt to parse to data.frame's if possible. Default: \code{TRUE}
#' @template curl
#' @return either a data.frame or a list
#' @examples \dontrun{
#' repositories()
#' repositories(id = 1)
#' }
repositories <- function(id = NULL, parse = TRUE, ...) {
  res <- asp_GET(if (is.null(id)) "repositories" else file.path("repositories", id), list(), ...)
  asp_parse(res, parse)
}
