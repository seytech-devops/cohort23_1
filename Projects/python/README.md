# Python 

## [What is Python?](https://www.python.org/)
-  is a high-level, general-purpose programming language.

### There are two versions of Python:
- python2 (unsupported)
- python3 
    - when you type python in terminal it opens interpreter (basically it is a python terminal)

## [Python Packages](https://pypi.org/)
- Is a repository for python packages. 

## [pip package manager for python](https://pypi.org/project/pip/)
- Example: pip install ansible

### How can I check which
- python do I use?                          --> which python, python, python --version
- pip do I use?                             --> which pip, pip, pip --version
- which python packages are installed?      --> pip list:  to list all the installed pakcages.


## [Python Virtual environment](https://docs.python.org/3/library/venv.html)
- is a isolated virtual environment with its own packages.

### How do we create virtual python environment?
- python -m venv </path/to/new/virtual/environment>

### Now I need to activate that virtual env. How do I activate it?
- source /<virtual_path/bin/active>    --> activate virtual python environment
 
- To deactivate the virtual environment:
    - type: deactivate

## requirements.txt?
- hold the list of python packages to install. You can add as many as you would like. 
- pip install -r <requirements.txt>

## [PEP8](https://peps.python.org/pep-0008/)
- Style Guide for Python Code


# [Python Data structure](https://www.learnpython.org/)
- Hello, World!
- Variables and Types
- Lists (Arrays)
- Basic Operators
- String Formatting
- Basic String Operations
- Boolean : True or False
- Conditions
- Loops
- Functions (Method)
- Dictionaries (Maps)
- Modules and Packages
- **Classes and Objects**

### Hello World
- I want to print into console "Hello World"
- print --> a built-in function 

How do you call function:
    - <func_name>() --> with paranthesis
    example:
        print("Hello World")

### Variables and Data Types:
- Variables: is a containers/bucket holds some value 

- Built-IN Data Types:
    - Text Type:	str
    - Numeric Types:	int, float, complex
    - Sequence Types:	list, tuple, range
    - Mapping Type:	dict
    - Set Types:	set, frozenset
    - Boolean Type:	bool
    - Binary Types:	bytes, bytearray, memoryview
    - None Type:	NoneType

### Mutable vs Immutable 
- Python has both mutable and immutable collection data types. 
    - Strings and tuples are **immutable**,
    - lists, dictionaries, and sets are **mutable**.


### Functions (Methods)
- is a piece of program that does specific thing 

```
# How to define function in python 
def <function_name>():
    print("Welcome to python class")
```