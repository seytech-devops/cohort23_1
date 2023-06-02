# Into to YAML.

`---`  : how to define it is a yaml file. 

- Key Value Pair
- Array/Lists
- Dictionary/Maps

## Key Value Pair
```
Type: sedan
Make: Toyota
Model: Camry 
Year: 2020
```

## Array / Lists 
```
Make:
- Toyota
    Model: 
        - Name: Camry
          Color: White
          Year: 2020
        - Name: Corolla
          Color: Black
          Year: 2023
- Honda
- Kia
- Ford

Students:
- Aigerim
- Marzhan
- Zhalsan
- Batyr
- Aidar
- Gulai

Students: ["Aigerim", "Marzhan", "Zhalsan", "Batyr", "Aidar", "Gulai"]
```

## Dictionary / Maps
```
Car:                              .Car.Make.Toyota
    Make: Toyoda
    Model: Camry 
    Color: White 
    Year: 2020

Students:
    Name: Aigerim
    Class: DevOps
    School: Seytech
```

