#' Read a WARC file
#'
#' Reads a WARC file from the given path and optionally applies filters
#' per entry or line.
#'
#' @param The path to the WARC file.
#' @param entry_filter a character string that, when not found inside the entry, will
#'   cause the entry to be filtered out.
#' @param line_filter a character string that, when not found inside a line, will
#'   cause that line to be filtered out.
#'
#' @useDynLib warc, .registration = TRUE
#' @import Rcpp
#' @export
read_warc <- function(path, entry_filter = "", line_filter = "") {
  rcpp_read_warc(path, filter = entry_filter, include = line_filter)
}
