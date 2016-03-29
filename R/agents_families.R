#' Agents - families
#'
#' @export
#' @param id (integer) family agent identifier. optional
#' @template paging
#' @template curl
#' @param parse (logical) Attempt to parse to data.frame's if possible. Default: \code{TRUE}
#' @return either a data.frame or a list
#' @examples \dontrun{
#' agents_families()
#' agents_families(id = 6)
#' agents_families(limit = 2)
#' agents_families(limit = 2, parse = FALSE)
#' }
agents_families <- function(id = NULL, page = 1, limit = 10, parse = TRUE, ...) {
  path <- if (is.null(id)) "agents/families" else file.path("agents/families", id)
  res <- asp_GET(path, list(page = page, page_size = limit), ...)
  asp_parse(res, parse)
}
