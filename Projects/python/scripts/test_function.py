#!/Users/kanatsultan/venv-main/bin/python


from os import getcwd 


# a = ["marzhan", "Kanat", "Aigerim"]
# # print(a[0])
# # print(a[0][::-1])

# b = a.reverse()

# print(a)


## Define python function
### print name function

def welcome():
    print("Welcome to Python class")

def total_payment(arg1, arg2):
    print(arg1 + arg2)

def get_creds(username, url):
    if username == "kanat" and url == "google.com":
        print("Let me get you the credential for user: ", username)

    else:
        print("Wrong username")

# def helper_function()


# to call /execute the function you need to call it.



# if __name__ == '__main__':
#     welcome()
#     total_payment(100, 5567)
#     # get_creds("kanat", "google.com")
#     welcome()
#     welcome()