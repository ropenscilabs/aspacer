#' Agents - people
#'
#' @export
#' @param id (integer) family agent identifier. optional
#' @template paging
#' @template curl
#' @param parse (logical) Attempt to parse to data.frame's if possible. Default: \code{TRUE}
#' @return either a data.frame or a list
#' @examples \dontrun{
#' agents_people()
#' agents_people(id = 6)
#' agents_people(id = 6, parse = FALSE)
#' agents_people(limit = 2)
#' agents_people(limit = 2, parse = FALSE)
#' }
agents_people <- function(id = NULL, page = 1, limit = 10, parse = TRUE, ...) {
  path <- if (is.null(id)) "agents/people" else file.path("agents/people", id)
  res <- asp_GET(path, list(page = page, page_size = limit), ...)
  asp_parse(res, parse)
}
