'''Create a Python dictionary that contains a bunch of fruits and their prices.
Write a program that checks if a certain fruit is available or not.'''


fruit_shop = {"apple": 10, "banana": 15, "orange": 8, "peaches": 15}

Key_fruit = input("Please enter fruit to search: ").lower()

for i in fruit_shop:
    if(Key_fruit==i):
        print("Fruit found in dict")
        raise SystemExit
print("Fruit not found in dict")