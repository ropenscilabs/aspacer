#' Get global preferences for the current logged in user
#'
#' @export
#' @param parse (logical) Attempt to parse to data.frame's if possible. Default: \code{TRUE}
#' @template curl
#' @return either a data.frame or a list
#' @examples \dontrun{
#' prefs()
#' }
prefs <- function(parse = TRUE, ...) {
  res <- asp_GET("current_global_preferences", list(), ...)
  asp_parse(res, parse)
}
