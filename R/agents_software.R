#' Agents - software
#'
#' @export
#' @param id (integer) family agent identifier. optional
#' @template paging
#' @template curl
#' @param parse (logical) Attempt to parse to data.frame's if possible. Default: \code{TRUE}
#' @return either a data.frame or a list
#' @examples \dontrun{
#' agents_software()
#' agents_software(id = 1)
#' agents_software(parse = FALSE)
#' }
agents_software <- function(id = NULL, page = 1, limit = 10, parse = TRUE, ...) {
  path <- if (is.null(id)) "agents/software" else file.path("agents/software", id)
  res <- asp_GET(path, list(page = page, page_size = limit), ...)
  asp_parse(res, parse)
}
