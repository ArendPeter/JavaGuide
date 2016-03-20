---
title: 6.2 Performing Actions
tags:
audience: programmers
type:
homepage:
---
We'll start with the **Do Stuff** component of methods since this makes up the bulk of what methods are in charge of.

## 6.2.1 Method Definition

Here's the basic syntax for defining a method that only does stuff

```java
public static void name(){
    //code for method
}
```

`public static void` is just how you start the definition. We'll break it down a little more later but for the sake of this course you can assume that the definition will always start with this if the method only does stuff.

`name` this whatever you name the method. It follows the same naming rules outlined in [Variable Basics](mydoc/3a_VariableBasics.html). This is also the term you type in when calling the method.

`()` we'll be talking more about this later. For methods that only do stuff it's always a empty pair of parenthesis.

`{   }` between the pointy brackets you insert the code that you wish to be executed when the method is called. You write the code in the same way as if you were writing it in the main method.

## 6.2.2 Example Program

This is the same example used in the previous section. It should all make a little more sense now.

```java
public class Greet{
  public static void main(String[] args){
    greet();
  }

  public static void greet(){
    System.out.println("Hello");
  }
}
```

## 6.2.3 Do Stuff Exercises

My experience has shown that, relative to other basic Java material, Methods tend to be more difficult to grasp. For this reason I'll be including more intermittent exercises in this chapter. These methods can be written in separate classes, or you could write them all in the same class.

1. Write a method called `celebrate()` and have it print some sort of celebratory message.
2. Write a method called `coolQuote()` and have it print your favorite quote.

You can try and play around with it by adjusting where in the program the method is defined (it shouldn't matter where it's defined). You can also try and call a method within the definition of another method.
