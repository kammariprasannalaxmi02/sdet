name = input("Enter your name: ")
age = input("Enter your age: ")

age = int(age)
required_age = 2020 - age
hunder_age = required_age + 100

txt = "{} will turn 100 years in the year {}."
print(txt.format(name, hunder_age))