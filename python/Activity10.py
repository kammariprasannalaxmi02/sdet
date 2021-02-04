#Given a tuple of numbers, iterate through it and print only those numbers which are divisible by 5

num_tuple = tuple(input("Enter the number tuple: ").split(","))

print(num_tuple)

num_results = []

for i in num_tuple:
    i = int(i)
    if(i%5==0):
        num_results.append(i)
print("Numbers divisible by 5: ")
print(num_results)
