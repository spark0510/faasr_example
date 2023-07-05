test1 <- function(faasr) {
  start<-Sys.time()
  args <- faasr_get_user_function_args(faasr)

  faasr_get_file(faasr, "S3_A", "folder", args$input, "local", "test1.txt")
  output <- read.table("local/test1.txt", header=F)
  faasr_put_file(faasr, "S3_A", "local", "output1.txt", "folder", args$output)
  end <- Sys.time()
  message<-end-start
  faasr_log(faasr, message)
}	

test2 <- function(faasr) {
  start<-Sys.time()
  args <- faasr_get_user_function_args(faasr)

  faasr_get_file(faasr, "S3_A", "folder", args$input, "local", "test2.txt")
  output <- read.table("local/test2.txt", header=F)
  faasr_put_file(faasr, "S3_A", "local", "output2.txt", "folder", args$output)
  end <- Sys.time()
  message<-end-start
  faasr_log(faasr, message)
}	

test3 <- function(faasr) {
  start<-Sys.time()
  args <- faasr_get_user_function_args(faasr)

  faasr_get_file(faasr, "S3_A", "folder", args$input, "local", "test3.txt")
  output <- read.table("local/test3.txt", header=F)
  faasr_put_file(faasr, "S3_A", "local", "output3.txt", "folder", args$output)
  end <- Sys.time()
  message<-end-start
  faasr_log(faasr, message)
}	

test4 <- function(faasr) {
  start<-Sys.time()
  args <- faasr_get_user_function_args(faasr)

  faasr_get_file(faasr, "S3_A", "folder", args$input, "local", "test4.pdf")
  faasr_put_file(faasr, "S3_A", "local", "output4.pdf", "folder", args$output)
  end <- Sys.time()
  message<-end-start
  faasr_log(faasr, message)
}	
