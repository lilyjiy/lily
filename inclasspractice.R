first_vector <- c(1,3,5,7)
first_vector %/% 2
first_vector %% 2
test_vec <- c(10, 20, 30, 40, 50)
#test_vec <- c(10L, 20L, 30L, 40L, 50L)  # change the type from double into int
typeof(test_vec)
typeof(first_vector)
test_vec_int <- as.integer(test_vec) # 2nd way to change type
character_vector <- c("ABC", "abc", "1,000", "$100", 123)
character_vector 
#as.numeric(character_vector)  #NAs introduced by coercion 
factor_variable <- as.factor(c("freshman", "sophomore", "junior", "senior"))
ordered_factor <- ordered(factor_variable, 
                          levels = c("freshman", "sophomore", "junior", "senior"), 
                          labels = c("f", "s", "junior", "senior"))
#ordered_factor <- ordered(factor_variable, 
#                          levels = c("freshman", "sophomore", "junior", "senior"), 
#                         labels = c("freshman", "sophomore", "junior", "senior"))
# levels, labels - arguments
ordered_factor
matrix_example <- matrix(data = c(1:3, 4:6, 7:9), 
                         nrow = 3, 
                         ncol = 3)
matrix_example
list_example <- list(names = c("seth", "sharif"), 
                     ages = c(30, 30), 
                     height = c(76, 76))
list_example$names
list_of_lists <- list(professors = list(names = c("seth", "sharif"), 
                                        ages = c(30, 30), 
                                        height = c(76, 76)), 
                      students = list(names = c("joe", "hexuan"), 
                                      ages = c(23, 25), 
                                      height = c(64, 64)))
list_of_lists
list_of_lists$professors$names
list_of_lists[['professors']] # double brackets for list of list
list_of_lists[1] # R starts with 1
df_example <- data.frame(name = c("seth", "sharif",
                                  "joe", "hexuan", 
                                  "hermalena"), 
                         age = c(30, 30, 23, 25, 30), 
                         height = c(76, 76, 64, 64, 68), 
                         role = c("professor", "professor", 
                                  "student", "student", 
                                  "student_services"))
df_example
View(df_example)
str(df_example)
df_example$age
df_example[, c("age", "role")]
df_example[, c(2, 4)]
df_example[1:3, ]
df_example[df_example$role == "student", ]
df_example[df_example$role == "student" & 
             df_example$name == "joe", ]
mean(x = df_example$age)
aggregate(x = df_example$age,
          by = list(group = df_example$role), 
          mean)
aggregate(age ~ role, 
          data = df_example, 
          mean)
people_over_72 <- df_example[df_example$height >= 72, ]
aggregate(age ~ role, 
          data = people_over_72, 
          mean)