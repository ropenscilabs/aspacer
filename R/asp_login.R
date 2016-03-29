#' Login to or logout from an ArchiveSpace API
#'
#' @export
#' @name auth
#' @param user (character) username, required
#' @param pwd (character) password, required
#' @template curl
#' @details retrieves a session ID, expires in 1 hr. the session ID is cached
#' during your R session, and is gone once you restart the session - thus, you'll
#' have to login again if you restart your R session
#' @examples \dontrun{
#' # asp_login()
#' # asp_logout()
#' }
asp_login <- function(user = NULL, pwd = NULL, ...) {
  res <- asp_parse(asp_POST(path = sprintf("users/%s/login", check_user(user)),
           body = list(password = check_pwd(pwd)),
           encode = "multipart", ...), TRUE)
  aspacer_env$login <- res
  return(res)
}

#' @export
#' @rdname auth
asp_logout <- function(...) {
  temp <- POST(file.path(asp_base(), "logout"), add_sess(), ...)
  stop_for_status(temp)
  return(TRUE)
}

check_logged_in <- function() {
  if (is.null(aspacer_env$login)) {
    message("logging in...")
    aspacer_env$login <- asp_login()
  }
}

sess <- function() aspacer_env$login$session

aspacer_env <- new.env()
