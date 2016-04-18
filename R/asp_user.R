#' Get currently logged in user
#'
#' @export
#' @template curl
#' @param parse (logical) Attempt to parse to data.frame's if possible. Default: \code{TRUE}
#' @examples \dontrun{
#' asp_user()
#' }
asp_user <- function(parse = TRUE, ...) {
  asp_parse(asp_GET(path = "users/current-user", list(), ...), TRUE)
}
