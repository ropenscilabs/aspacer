#' Reports
#'
#' @export
#' @template curl
#' @param parse (logical) Attempt to parse to data.frame's if possible. Default: \code{TRUE}
#' @return either a data.frame or a list
#' @examples \dontrun{
#' asp_reports()
#' }
asp_reports <- function(parse = TRUE, ...) {
  asp_parse(asp_GET("reports", list(), ...), parse)
}
