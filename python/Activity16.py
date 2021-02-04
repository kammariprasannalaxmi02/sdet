from datetime import datetime

x = (datetime.now())
#string format time function to display value of time
print(x.year)
print(x.strftime("%A"))
print(x.strftime("%B"))
x = datetime(2020, 5, 1)
print(x)