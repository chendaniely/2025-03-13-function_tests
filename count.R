count_classes <- function(data_frame, class_col) {
  # returns a data frame with two columns: class and count
  if (!is.data.frame(data_frame)) {
    stop("`data_frame` should be a data frame or data frame extension (e.g. a tibble)")
  }

  return(data_frame |>
    dplyr::group_by({{ class_col }}) |>
    dplyr::summarize(count = dplyr::n()) |>
    dplyr::rename("class" = {{ class_col }}))
}
