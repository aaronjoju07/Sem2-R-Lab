#Factor
#creating a list
x1=c("Dec","Apr","Jan","Mar")
month_levels = c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")
x1 =factor(x1,levels = month_levels)
x1
is.factor(x1)
sort(x1)
as.ordered(x1)

#creating List containing matrix and vector

list_info=list("Blue","Black",c(12,13,14), TRUE, 13.12,103.4)
print(list_info)

list_name = list(matrix(c(1,2,3,4,5,6),nrow = 2),c("mon","tue","wed"));list_name
list_name[1]

#Relevel
sizes = factor(c("small","large","large","small","medium"));sizes
sizes = factor(sizes,levels = rev(levels(sizes)));sizes
sizes = relevel(sizes,"medium");sizes
#dataFrame
df=data.frame(col1=1:3,
              col2 = c("this","is","text"),
              col3 = c(TRUE,FALSE,TRUE),
              col4= c(2.4,4.5,pi),
              stringsAsFactors = FALSE)
str(df)
l=list(item1 = 1:3,item2 = c("this","is","text"),item3=c(1,4.2,2));l
as.data.frame(l);str(l)
dim(df)
attributes(df)
colnames(df)
comment(df)




df <- data.frame(col1=1:3,
                 col2=c("this","is","text"),
                 col3=c(TRUE,FALSE,TRUE),
                 col4=c(2.5,4.2,pi))

df <- data.frame(col1=1:3,
                 col2=c("this","is","text"),
                 col3=c(TRUE,FALSE,TRUE),
                 col4=c(2.5,4.2,pi),
                 stringsAsFactors = FALSE)
df
str(df)

df <- data.frame(col1=1:3,
                 col2=c("this","is","text"),
                 col3=c(TRUE,FALSE,TRUE),
                 col4=c(2.5,4.2,pi),
                 stringsAsFactors = TRUE)
df
str(df)

l<-list(item1=1:3,item2=c("this","is","text"),item3=c(2.5,4.2,5.1))
l
as.data.frame(l)

mt<-matrix(1:4,nrow = 3,ncol = 4)
mt 
as.data.frame(mt)
v4<-c("A","B","v")
cbind(df,v4)

dim(df)
attributes(df)
comment(df)

#subsetting data frame
df
#subsetting by row names
df =rownames(df) <- c("row1","row2","row3")
df[c("row2","row3")];sub
#subsetting by row number
df[2:3,]
