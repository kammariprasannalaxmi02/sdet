#Write a program that asks the user how many Fibonnaci numbers to generate and then generates them.

fibo_num = input("Enter the number to get Fibonnaci numbers: ")

def fibonnaci_Num(fib_num):
    n1 = 0
    n2 = 1
    i = 1
    n = int(fib_num) - 2
    fiba_list = [0,1]
    if(int(fib_num)==1):
        print([0])
    else:
        while(i<=n):
            sum = n1 + n2
            n1 = n2
            n2 = sum
            fiba_list.append(sum)
            i+=1
        print(fiba_list)

fibonnaci_Num(fibo_num)
