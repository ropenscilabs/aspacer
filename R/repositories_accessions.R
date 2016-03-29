#' Get repositories accessions
#'
#' @export
#' @param id (integer) location identifier. optional
#' @template paging
#' @template curl
#' @param parse (logical) Attempt to parse to data.frame's if possible. Default: \code{TRUE}
#' @return either a data.frame or a list
#' @examples \dontrun{
#' repositories_accessions(id = 1)
#' }
repositories_accessions <- function(id, page = 1, limit = 10, parse = TRUE, ...) {
  path <- file.path("repositories", id, "accessions")
  res <- asp_GET(path, list(page = page, page_size = limit), ...)
  asp_parse(res, parse)
}
