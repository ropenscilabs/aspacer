#' Agents - Corporate entities
#'
#' @export
#' @template paging
#' @template curl
#' @param parse (logical) Attempt to parse to data.frame's if possible. Default: \code{TRUE}
#' @return either a data.frame or a list
#' @examples \dontrun{
#' agents_corporate_entities()
#' agents_corporate_entities(limit = 3)
#' agents_corporate_entities(limit = 3, parse = FALSE)
#' }
agents_corporate_entities <- function(page = 1, limit = 10, parse = TRUE, ...) {
  res <- asp_GET(path = "agents/corporate_entities", list(page = page, page_size = limit), ...)
  asp_parse(res, parse)
}
