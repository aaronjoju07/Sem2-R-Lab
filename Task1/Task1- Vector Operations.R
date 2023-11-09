# 1. Create a vector named sales_data
sales_data = c(45, 60, 35, 75, 80, 62, 48, 53, 69, 72, 40, 55);sales_data

# 2. Calculate the total annual sales
total_annual_sales = sum(sales_data);cat("Total Annual Sales: $", total_annual_sales, "\n")

# 3. Compute the monthly average sales
monthly_average_sales = total_annual_sales / 12;cat("Monthly Average Sales: $", monthly_average_sales, "\n")

# 4. Determine the month with the highest and lowest sales
max_sales_month_index = order(sales_data,decreasing = TRUE)[1];
min_sales_month_index = order(sales_data,decreasing = FALSE)[1];
mth = c("January","February","March","April","May","June","July","August","September","October","November","December")
max_sales_month=mth[max_sales_month_index]
min_sales_month=mth[min_sales_month_index]
max_sales_figure = sales_data[max_sales_month_index]
min_sales_figure = sales_data[min_sales_month_index]
cat("Month with Highest Sales: Month ", max_sales_month, " with Sales: $", max_sales_figure, "\n")
cat("Month with Lowest Sales: Month ", min_sales_month, " with Sales: $", min_sales_figure, "\n")

# 5. Increase the sales figure for the third month (March) by 10%

sales_data[3] =sales_data[3] + (sales_data[3]*0.1)
cat("Increased sales figure for the third month (March) by 10%:" ,sales_data[3])

# 6. Sort the sales_data vector in ascending order
sorted_sales = sort(sales_data);cat("Sorted Sales data in ascending :",sorted_sales)

# 7. Sort the sales_data vector in descending order
reverse_sorted_sales = sort(sales_data, decreasing = TRUE);cat("Sorted Sales data in descending order :",reverse_sorted_sales)

# 8. Calculate the median sales value from the sorted_sales vector
median_sales = median(sorted_sales);cat("Median of sales data :",median_sales)
