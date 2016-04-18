#' Agents - families
#'
#' @export
#' @param id (integer) a single family agent identifier. optional
#' @param all_ids (logical) Return a list of all object ids.
#' Not sure this does anything? Default: \code{FALSE}
#' @template paging
#' @template curl
#' @param parse (logical) Attempt to parse to data.frame's if possible. Default: \code{TRUE}
#' @return either a data.frame or a list
#' @examples \dontrun{
#' agents_families()
#' agents_families(id = 3)
#' agents_families(id = c(6, 7))
#' agents_families(limit = 2)
#' agents_families(limit = 2, parse = FALSE)
#' }
agents_families <- function(id = NULL, all_ids = FALSE, page = 1, limit = 10, parse = TRUE, ...) {
  path <- if (is.null(id)) "agents/families" else file.path("agents/families", id)
  res <- asp_GET(path, list(all_ids = all_ids, page = page, page_size = limit), ...)
  asp_parse(res, parse)
}
