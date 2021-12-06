library(readr)
churn <- read.csv("C:\\Users\\user\\Documents\\Working Directory\\Working Directory_Intellipaat\\R Language\\Practice Session\\1st  Stimulus\\customer_churn.csv")

########### Questions on geom_bar() ########### 
library(ggplot2)

# 1.Build a bar-plot for the 'PhoneService' column: a.Assign the fill color to be 'pink'
colnames(churn)
ggplot(data = churn, aes(x = PhoneService)) + geom_bar(fill = "pink")


# b.Assign the boundary color to be 'peru'
ggplot(data = churn, aes(x = PhoneService)) + geom_bar(fill = "pink", col = "peru")


# 2.Build a bar-plot for the 'InternetService' column: a.Assign 'InternetService' to the fill aesthetic
colnames(churn)
ggplot(data = churn, aes(x = InternetService, fill = InternetService)) + geom_bar()

ggplot(data = churn, aes(x = InternetService, fill = InternetService)) + geom_bar(fill = "red")


# b.Assign 'Contract' to the fill aesthetic
ggplot(data = churn, aes(x = InternetService, fill = Contract)) + geom_bar(col = "blue")


# c.Change the position of bars to 'identity'
ggplot(data = churn, aes(x = InternetService, fill = Contract)) + geom_bar(position = "identity", col = "black")

ggplot(data = churn, aes(x = InternetService, fill = StreamingTV)) + geom_bar(position = "identity", col = "yellow")


# 3.Build a bar-plot for 'TechSupport' column: a.Assign 'Churn' to the fill aesthetic
ggplot(data = churn, aes(x = TechSupport, fill = Churn)) + geom_bar(col = "green")


########### Questions on geom_histogram() ###########

# 1.Build a histogram for the 'tenure' column: a.Assign the fill color to be 'mediumspringgreen'
ggplot(data = churn, aes(x = tenure)) + geom_histogram(fill = "mediumspringgreen") 


# b.Assign the boundary color to be 'azure'
ggplot(data = churn, aes(x = tenure)) + geom_histogram(fill = "mediumspringgreen", col = "azure") 


# c.Change the number of bins to be 100
ggplot(data = churn, aes(x = tenure)) + geom_histogram(fill = "mediumspringgreen", col = "azure", bins = 100) 


# 2.Build histogram for the 'MonthlyCharges' column: a.Assign 'PaymentMethod' to the fill aesthetic
ggplot(data = churn, aes(x = MonthlyCharges, fill = PaymentMethod)) + geom_histogram(col = "blue") 


# b.Assign 'OnlineBackup' to the fill aesthetic
ggplot(data = churn, aes(x = MonthlyCharges, fill = OnlineBackup)) + geom_histogram(col = "green") 


# 3.Build histogram for the 'TotalCharges' column: a.Assign 'gender' to the fill aesthetic
ggplot(data = churn, aes(x = TotalCharges, fill = gender)) + geom_histogram(col = "black") 


# b.Assign 'InternetService' to the fill aesthetic
ggplot(data = churn, aes(x = TotalCharges, fill = InternetService)) + geom_histogram(col = "white") 


########### Questions on geom_point() ###########

# 1.Build a scatter-plot between 'TotalCharges' & 'tenure'. Map 'TotalCharges' to the y-axis & 'tenure' to the 'x-axis': a.Assign it the color 'wheat3'
ggplot(data = churn,aes(y=TotalCharges,x=tenure))+geom_point(col="wheat3")


# b.Use 'col' as an aesthetic and Map 'PaymentMethod' to col
ggplot(data = churn,aes(y=TotalCharges,x=tenure, col=PaymentMethod))+geom_point()


# c.Use 'col' as an aesthetic and Map 'gender' to col
ggplot(data = churn,aes(y=TotalCharges,x=tenure, col=gender))+geom_point()


# d.Map 'Dependents' to both 'col' & 'shape' aesthetics
ggplot(data = churn,aes(y=TotalCharges,x=tenure, col=Dependents, shape = Dependents))+geom_point()

ggplot(data = churn,aes(y=TotalCharges,x=tenure, col=Dependents))+geom_point()


# 2.	Build a scatter-plot between 'tenure' & 'MonthlyCharges'. Map 'tenure' to the y-axis & 'MonthlyCharges' to the 'x-axis': a.Assign it the color 'yellowgreen'
ggplot(data = churn,aes(y=tenure,x=MonthlyCharges))+geom_point(col="yellowgreen")


# b.Use 'col' as an aesthetic and Map 'InternetService' to col
ggplot(data = churn,aes(y=tenure,x=MonthlyCharges, col=InternetService))+geom_point()


# c.Use 'col' as an aesthetic and Map 'Contract' to col
ggplot(data = churn,aes(y=tenure,x=MonthlyCharges, col=Contract))+geom_point()


########### Questions on geom_boxplot ########### 

# 1.Build a box-plot between 'tenure' & 'Partner'. Map 'tenure' to the y-axis & 'Partner' to the 'x-axis': a.Assign it a fill color of 'violet'
ggplot(data = churn,aes(y=tenure,x=Partner))+geom_boxplot(fill = "violet") 


# b.Assign it a boundary color of 'snow3'
ggplot(data = churn,aes(y=tenure,x=Partner))+geom_boxplot(fill = "violet", col = "snow3") 


# 2.Build a box-plot between 'tenure' & 'MultipleLines'. Map 'tenure' to the y-axis & 'MultipleLines' to the 'x-axis': a.Assign 'Partner' to the fill aesthetic
ggplot(data = churn,aes(y=tenure,x=MultipleLines, fill = Partner))+geom_boxplot() 


# b.Assign 'PhoneService' to the fill aesthetic
ggplot(data = churn,aes(y=tenure,x=MultipleLines, fill = PhoneService))+geom_boxplot() 


# 3.Build a box-plot between 'tenure' & 'Contract': a.Assign 'InternetService' to the fill aesthetic
ggplot(data = churn,aes(y=tenure,x=Contract, fill = InternetService))+geom_boxplot() 


# b.Assign 'PaymentMethod' to the fill aesthetic
ggplot(data = churn,aes(y=tenure,x=Contract, fill = PaymentMethod))+geom_boxplot() 


############ Questions on facet_grid() ############

# 1.Build a box-plot between 'tenure' & 'MultipleLines'. Map 'tenure' on the y-axis & 'MultipleLines' on the x-axis. Map 'InternetService' to the fill aesthetic: a.Facet the plot w.r.t 'InternetService' column
ggplot(data = churn,aes(y=tenure,x=MultipleLines,fill = InternetService))+geom_boxplot() +
  facet_grid(~InternetService) + ggtitle("Tenure box-plot - Internet Service Wise") +
  xlab("Tenure") + ylab("Count") + theme_minimal()

fg1 = ggplot(data = churn,aes(y=tenure,x=MultipleLines,fill = InternetService))+geom_boxplot(); 
fg1 + facet_grid(~InternetService) + ggtitle("Tenure box-plot - Internet Service Wise") +
  xlab("Tenure") + ylab("Count") + theme_minimal()


# 2.Build a scatter-plot between 'TotalCharges' & 'tenure'. Map 'TotalCharges' on the y-axis & 'tenure' on the x-axis. Map 'Contract' onto col aesthetic: a.Facet the plot w.r.t 'Contract' column
ggplot(data = churn,aes(y=TotalCharges,x=tenure,col=Contract))+geom_point() +
  facet_grid(~Contract) + ggtitle("TotalCharges scatter-plot - Contract Wise") +
  xlab("TotalCharges") + ylab("Count")

fg2 = ggplot(data = churn,aes(y=TotalCharges,x=tenure,col=Contract))+geom_point();
fg2 + facet_grid(~Contract) + ggtitle("TotalCharges scatter-plot - Contract Wise") +
  xlab("TotalCharges") + ylab("Count")


# 3.Build a histogram for the 'MonthlyCharges' column. Map 'PaymentMethod' onto fill aesthetic: a.Facet the plot w.r.t 'PaymentMethod' column
ggplot(data = churn,aes(x=MonthlyCharges,fill=PaymentMethod))+geom_histogram() +
  facet_grid(~PaymentMethod) + ggtitle("MonthlyCharges histogram - PaymentMethod Wise") +
  xlab("MonthlyCharges") + ylab("Count") + theme_minimal()

fg3 = ggplot(data = churn,aes(x=MonthlyCharges,fill=PaymentMethod))+geom_histogram();
fg3 + facet_grid(~PaymentMethod) + ggtitle("MonthlyCharges histogram - PaymentMethod Wise") +
  xlab("MonthlyCharges") + ylab("Count") + theme_minimal()


########### Questions on theme() layer ########### 

# 1.Build a bar-plot for the 'gender' column. Give it a fill color of 'blue4': a.Give the panel a background color of 'chartreuse4'
ggplot(data = churn, aes(x=gender))+geom_bar(fill = "blue4") + theme(plot.background = element_rect(fill = "chartreuse4"))


# b.Give the plot a background color of 'cornsilk4'
ggplot(data = churn, aes(x=gender))+geom_bar(fill = "blue4") + theme(plot.background = element_rect(fill = "cornsilk4"))


# 2.	Build a scatter-plot between 'tenure' & 'MonthlyCharges'. Map 'tenure' on the y-axis & 'MonthlyCharges' on the x-axis. Assign a color of 'yellowgreen' to the points: a.Add a title to the plot 'Tenure vs Monthly Charges'
ggplot(data = churn,aes(y=tenure,x=MonthlyCharges))+geom_point(col="yellowgreen") + ggtitle("Tenure vs Monthly Charges")


# b.Give the panel a background color of 'coral2'
ggplot(data = churn,aes(y=tenure,x=MonthlyCharges))+geom_point(col="coral2") + ggtitle("Tenure vs Monthly Charges")


# c.Give the plot a background color of 'beige'
ggplot(data = churn,aes(y=tenure,x=MonthlyCharges))+geom_point(col="coral2") + ggtitle("Tenure vs Monthly Charges") + theme(plot.background = element_rect(fill = "beige"))


# d.Center align the title & make the color of the title to be red
ggplot(data = churn,aes(y=tenure,x=MonthlyCharges))+geom_point(col="coral2") + ggtitle("Tenure vs Monthly Charges") + theme(plot.title = element_text(hjust = 0.5, color = "red", size = 18, face = "bold")) # The options hjust = 1 and hjust = 0 place titles on the right and the left side of the plot, respectively.



