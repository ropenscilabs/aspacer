cp <- function(x) Filter(Negate(is.null), x)

asp_GET <- function(path, args, ...){
  check_logged_in()
  temp <- GET(file.path(asp_base(), path), query = args, add_sess(), ...)
  stop_for_status(temp)
  stopifnot(temp$headers$`content-type` == 'application/json')
  content(temp, as = 'text', encoding = "UTF-8")
}

asp_POST <- function(path, body, ...){
  temp <- POST(file.path(asp_base(), path), body = body, ...)
  stop_for_status(temp)
  stopifnot(temp$headers$`content-type` == 'application/json')
  content(temp, as = 'text', encoding = "UTF-8")
}

add_sess <- function() add_headers(`X-ArchivesSpace-Session` = sess())

asp_parse <- function(x, parse) {
  jsonlite::fromJSON(x, parse)
}

check_user <- function(x){
  tmp <- if (is.null(x)) Sys.getenv('ARCHIVESPACE_USER', '') else x
  if (tmp == "") {
    getOption("archivespace_user", stop("you need a user name for the ArchiveSpace API", call. = FALSE))
  } else {
    tmp
  }
}

check_pwd <- function(x){
  tmp <- if (is.null(x)) Sys.getenv('ARCHIVESPACE_PWD', '') else x
  if (tmp == "") {
    getOption("archivespace_pwd", stop("you need a password for the ArchiveSpace API", call. = FALSE))
  } else {
    tmp
  }
}

asp_base <- function() "https://archivesadmin.calacademy.org/api"
