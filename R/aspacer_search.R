#' Search an ArchiveSpace API
#'
#' @export
#' @param query (character) query string, required
#' @param parse (logical) Attempt to parse to data.frame's if possible. Default: \code{TRUE}
#' @template paging
#' @template curl
#' @examples \dontrun{
#' asp_search(query = 'ecology')
#' asp_search(query = 'ecology', parse = FALSE)
#' asp_search(query = 'ecology', limit = 2)
#' }
asp_search <- function(query, page = 1, limit = 10, parse = TRUE, ...) {
  res <- asp_GET("search", list(q = query, page = page, pageSize = limit), ...)
  asp_parse(res, parse)
}
