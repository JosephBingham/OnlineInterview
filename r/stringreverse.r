#!/usr/bin/env Rscript
revstring <- function(s){
	print(paste(rev(strsplit(s,"")[[1]]),collapse=""))
}
string <- "hello"

a <- revstring(string)