"""Write a Python program to calculate the sum of all the elements in a list.
Bonus points if you can make the user enter their own list."""

num = list(input("Enter the list of Numbers to calculate the sum: ").split(","))
print(num)

sum = 0

for i in num:
    i = int(i)
    sum += i
print("Sum  of all the number in the list is: ", sum)
