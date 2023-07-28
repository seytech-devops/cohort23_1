#!/Users/kanatsultan/venv-main/bin/python

phonebook = {}  # empty dictionary 
phonebook = []  # empty list (array)
phonebook = {
    "Name": "Anyname",
    "Age": 100,
    "Address" : {
        "Number": 10,
        "StreetName": "Boardway street"
    }
} 

print(phonebook["Address"]["StreetName"])
# print(type(phonebook))

students = {
    "FirstName": "Kanat",
    "LastName" : "Sultan",
    "Phone": 3128639614
}   

# if students["FirstName"] == "Sultan":
#     print("Your got it")
# else:
#     print("Wrong name")