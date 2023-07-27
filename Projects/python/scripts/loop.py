# while loop 
# Prints out 0,1,2,3,4

count = 0
while count < 5:
    print(count) # 0, 1, 2, 3, 4
    count += 1  # This is the same as count = count + 1

                # 0 + 1  --> count = 1  --> True < 5
                # 1 + 1  --> count = 2  --> True < 5
                # 2 + 1  --> count = 3  --> True < 5
                # 3 + 1  --> count = 4  --> True < 5
                # 4 + 1  --> count = 5  --> False < 5


# for loop uisng range function 
for number in range(100):
    print(number)