# load GOTTCHA assignments
#

# projects
#
data_file <- "../test_data/test_table_diamond.txt"

# read em
#
the_list <- load_diamond_assignments(data_file)

# tests
#
expect_that(length(the_list), equals(3))

expect_that(names(the_list)[3], equals("test_all_taxa"))

#
# test the failure
#
expect_that(load_diamond_assignments("../test_data/nonexistentfile.txt"), throws_error())