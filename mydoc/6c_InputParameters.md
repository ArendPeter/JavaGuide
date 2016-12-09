---
title: 6.3 Input Parameters
tags:
audience: programmers
type:
homepage:
---

## 6.3.1 Adding Input Parameters to Definition

The next topic we'll go into is how to make methods **Take Stuff**. Here we can give the method various input parameters and the method can use those to aid in whatever it's supposed to do. Here's the basic format.

```java
public static void name(type1 arg1, type2 arg2){
    //code here
}
```

Similar to the methods that only do stuff `public static void` is just the same every time, and `name` represents whatever the name of the method is. For methods that have input parameters, those parameters are inputted between the parenthesis `()` and are separated by commas `,`. They also have their types included. Here are some possible method definition lines.

```java
public static void printSum(int a, int b){}
public static void printGPA(float gpa){}
public static void printInMeters(int yards, int feet, int inches){}
```

Notice that we can add parameters to the list as needed.

## 6.3.2 Example Program

```java
public class TakeStuff{
  public static void main(String[] args){
    String bobsName = "Bob";
    greetByName(bobsName);
    greetCouple("Dick","Jane");
  }

  public static void greetByName(String name){
    System.out.println("Hello "+name+", how are you?");
  }

  public static void greetCouple(String mr, String mrs){
    System.out.println("Hello "+mr+" and "+mrs+", how are y'all?");
    //southerners were the only people reasonable enough to add a
    //  second person plural pronoun to the English language
  }
}
```

Here I created 2 methods, one with a single parameter and another with 2 parameters. Notice that when calling them it's equally valid to input data into the methods (ex. `greet("Bob")`) or to use a variable (as done in the example). Another important note that's often missed is that the variable name inputted does not have to match the variable name in method definition. In this case I inputted the variable `bobsName` but in the `greetByName()` method I referred to the variable by `name`.

## 6.3.3 Exercises

1. Create full methods for the definitions listed in 6.3.1.
2. Create a method called printThrice. It takes in a string as one of it's parameters and prints that string 3 times.
3. Create a method which takes in 3 floats and prints the average.
