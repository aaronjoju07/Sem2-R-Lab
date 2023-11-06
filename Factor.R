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

#manipilating list elements 
#creating a list which contains a vector, a matrix and a list 
