complete<-function(directory, id=1:332){
 
  list.files
  files<-list.files("specdata")
  directory<- "specdata"
  files_list<-list.files(directory, full.names = TRUE)#creates a list of files
  
  x=list.files(directory)
  y=x[match(id, as.numeric(sub(".csv", "",x)))]
  z=file.path(directory,y)
  a=function(z) sum(complete.cases(read.csv(z)))
  data.frame(id=id,nobs=unlist(lapply(z,a)))
  
}

complete("specdata",1)

complete("specdata",c(2,4,8,10,12))
