#Write a function sum() such that it can accept a list of elements and print the sum of all elements

num_sum = list(input("Enter a list of number: ").split(","))

print(num_sum)

def sum(list_num):
    total = 0
    for i in num_sum:
        total += int(i)
    print("sum of all number =", total)

sum(num_sum)