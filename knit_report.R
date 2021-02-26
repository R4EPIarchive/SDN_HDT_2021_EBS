################## Knit reports ################################################
library(tsibble)

week_report <- as.character(yearweek(Sys.Date(),
                               week_start = 7))



## use the rmarkdown template and save a  in the appropriate week folder
rmarkdown::render(input = here::here("hamadayet_ibs_ebs_sitrep_template.Rmd"),
                    output_file = stringr::str_glue("hamadayet_ebs_sitrep", "_",
                                                    week_report, ".docx"),
                    output_dir = here::here("2020_hamadayet", "4_output",
                                            "1_ebs_sitrep",
                                            week_report))


rmarkdown::render(input = here::here("hamadayet_surveillance_evaluation_template.Rmd"),
                  output_file = stringr::str_glue("hamadayet_ebs_evaluation", "_",
                                                  week_report, ".docx"),
                  output_dir = here::here("2021_hamadayet", "4_output",
                                          "2_ebs_evaluation"))


rmarkdown::render(input = here::here("hamadayet_crossing_point_template.Rmd"),
                  output_file = stringr::str_glue("hamadayet_crossing_point_report",
                                                  "_", week_report),
                  output_dir = here::here("2021_hamadayet", "4_output",
                                          "3_crossing"))


rmarkdown::render(input = here::here("hamadayet_weekly_project_sitrep_template.Rmd"),
                  output_file = stringr::str_glue("hamadayet_weekly_project_sitrep",
                                                  "_", week_report),
                  output_dir = here::here("2021_hamadayet", "4_output",
                                          "4_project_sitrep"))


rmarkdown::render(input = here::here("hamadayet_reception_surveillance_template.Rmd"),
                  output_file = stringr::str_glue("hamadayet_reception_surveillance",
                                                  "_", week_report),
                  output_dir = here::here("2021_hamadayet", "4_output",
                                          "5_reception_surveillance"))
