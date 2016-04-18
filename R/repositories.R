#' Get repositories
#'
#' @export
#' @param id (integer) location identifier. optional
#' @param repo_id (integer) repository identifier. required
#' @param parse (logical) Attempt to parse to data.frame's if possible. Default: \code{TRUE}
#' @template paging
#' @template curl
#' @return either a data.frame or a list
#' @examples \dontrun{
#' repos()
#' repos(id = 1)
#'
#' # doesn't work
#' # repos_accessions(1)
#' }
repos <- function(id = NULL, parse = TRUE, ...) {
  res <- asp_GET(if (is.null(id)) "repositories" else file.path("repositories", id), list(), ...)
  asp_parse(res, parse)
}

#' @export
#' @rdname repos
repos_accessions <- function(repo_id = NULL, page = 1, limit = 10, parse = TRUE, ...) {
  res <- asp_GET(sprintf("repositories/%s/accessions", repo_id),
                 list(page = page, page_size = limit), ...)
  asp_parse(res, parse)
}
