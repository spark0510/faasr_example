test1 <- function(faasr) {
  start<-Sys.time()
  args <- faasr_get_user_function_args(faasr)
  if(file.exists("test1.txt")){file.remove("test1.txt")}
  faasr_get_file(faasr, "S3_A", "folder", args$input, "local", "test1.txt")
  output <- read.table("local/test1.txt", header=F)
  faasr_put_file(faasr, "S3_A", "local", "output1.txt", "folder", args$output)
  end <- Sys.time()
  message<-end-start
  if (object_exists("logs/test1_logs.txt", "spark7-bucket-01")){
			save_object("logs/test1_logs.txt", file="test1_logs.txt", bucket="spark7-bucket-01")
		}
  write.table(message, "test1_logs.txt", col.names=FALSE, row.names = FALSE, append=TRUE, quote=FALSE)
	put_object(file="test1_logs.txt", object="logs/test1_logs.txt", bucket="spark7-bucket-01")
}	

test2 <- function(faasr) {
  start<-Sys.time()
  args <- faasr_get_user_function_args(faasr)
  if(file.exists("test2.txt")){file.remove("test2.txt")}
  faasr_get_file(faasr, "S3_A", "folder", args$input, "local", "test2.txt")
  output <- read.table("local/test2.txt", header=F)
  faasr_put_file(faasr, "S3_A", "local", "output2.txt", "folder", args$output)
  end <- Sys.time()
  message<-end-start
  if (object_exists("logs/test2_logs.txt", "spark7-bucket-01")){
			save_object("logs/test2_logs.txt", file="test2_logs.txt", bucket="spark7-bucket-01")
		}
  write.table(message, "test2_logs.txt", col.names=FALSE, row.names = FALSE, append=TRUE, quote=FALSE)
	put_object(file="test2_logs.txt", object="logs/test2_logs.txt", bucket="spark7-bucket-01")
}	

test3 <- function(faasr) {
  start<-Sys.time()
  args <- faasr_get_user_function_args(faasr)
  if(file.exists("test3.txt")){file.remove("test3.txt")}
  faasr_get_file(faasr, "S3_A", "folder", args$input, "local", "test3.txt")
  output <- read.table("local/test3.txt", header=F)
  faasr_put_file(faasr, "S3_A", "local", "output3.txt", "folder", args$output)
  end <- Sys.time()
  message<-end-start
  if (object_exists("logs/test3_logs.txt", "spark7-bucket-01")){
			save_object("logs/test3_logs.txt", file="test3_logs.txt", bucket="spark7-bucket-01")
		}
  write.table(message, "test3_logs.txt", col.names=FALSE, row.names = FALSE, append=TRUE, quote=FALSE)
	put_object(file="test3_logs.txt", object="logs/test3_logs.txt", bucket="spark7-bucket-01")
}	

test4 <- function(faasr) {
  start<-Sys.time()
  args <- faasr_get_user_function_args(faasr)
  if(file.exists("test4.pdf")){file.remove("test4.pdf")}
  faasr_get_file(faasr, "S3_A", "folder", args$input, "local", "test4.pdf")
  faasr_put_file(faasr, "S3_A", "local", "output4.pdf", "folder", args$output)
  end <- Sys.time()
  message<-end-start  
  if (object_exists("logs/test4_logs.txt", "spark7-bucket-01")){
			save_object("logs/test4_logs.txt", file="test4_logs.txt", bucket="spark7-bucket-01")
		}
  write.table(message, "test4_logs.txt", col.names=FALSE, row.names = FALSE, append=TRUE, quote=FALSE)
	put_object(file="test4_logs.txt", object="logs/test4_logs.txt", bucket="spark7-bucket-01")
}	
