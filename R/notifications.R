#' Get notifications
#'
#' @export
#' @template curl
#' @param parse (logical) Attempt to parse to data.frame's if possible. Default: \code{TRUE}
#' @return either a data.frame or a list
#' @examples \dontrun{
#' notifications()
#' }
notifications <- function(parse = TRUE, ...) {
  res <- asp_GET("notifications", list(), ...)
  asp_parse(res, parse)
}
