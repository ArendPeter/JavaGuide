---
title: 7.2 Comparison Operators
tags:
audience: programmers
type:
homepage:
---

## 7.2.1 Comparison Operators in conditions

The rest of the sections of this chapter cover different ways we can work with the condition of the if statement. After all, the condition is the core part of the if statement since this is the portion that decides which path the logic will take. It's important to remember that regardless of what symbols we add to the condition the end result is always that it becuase a true/false expression which we evaluate to decide which path we should take.

In this section we'll be covering the various comparison operators. Using these we can use our if statements to describe more complex logic. Here's an example of what we might do

```java
System.out.println("Do I need a jacket?")
int temperature = 30;//fahrenheit
if(temperature < 50){
    System.out.println("Yep it's chilly, I'll wear a jacket");
}
```

So here within the condition we're comparing `temp` and `50`, and we're using the `<` (less than). This statment would be true if `temp` is less than `50` and it will be false otherwise. Again it reads like a sentance,  "if the temperature is less than 50 wear a jacket".

## 7.2.2 List of comarison operators

Less than is just one of the comparison operators, here's a list of all the comparison operators that you can use in Java along with their mathematical equivalents.

| Java Syntax | Math Symbol  |
|:--------|:--------|
| ==    | \=  |
| !=   | ≠ |
| <=     | ≤ |
| <    | < |
| >=    | ≥ |
| >    | \> |

>**Note:** Just want to clarify that `==` and `=` are different. Remember that `=` is the assignment operator, so `a = b` will set `a` to be the same as `b`. `==` on the other hand won't change either side. `a == b` will be a true statement if `a` and `b` are the same, and otherwise it will be false.

Being able to use comparison operators are very useful for working with variables beyond basic boolean variables. Using these operators we can take numbers and convert them into boolean expressions so that we do branching logic on these if statements.

## 7.2.3 Examples

Here are some more examples using conditional operators, again I recommend that you try and run the code your self and see how the output changes as you adjust the variable values.

```java
public class CakeBaking{
  public static void main(String[] args){
    System.out.println("I want to bake a cake but I need 8 eggs");
    int numEggs = 9;
    if(numEggs < 8){
      System.out.println("I need to go to the store, I don't have enough eggs");
    }
  }
}
```

```java
public class DiceRoll{
  public static void main(String[] args){
    System.out.println("Rolling the dice");
    int roll = 3;
    if(roll == 2){
      System.out.println("Snake eyes");
    }
    if(roll == 12){
      System.out.println("Midnight");
    }
  }
}
```

```java
public class Millionaire{
  public static void main(String[] args){
    int numDollars = 123456;
    if(numDollars >= 1000000){
      System.out.println("Congratulations, you're a millionaire");
    }else{
      System.out.println("Sorry, you're just a normal person");
    }
  }
}
```

This example has a second if statment within the first one. These are called `nested if statements`, and it's one of the ways you can take care of scenarios where you want to address more than 3 outcomes. These will probably be a little bit tricier to analyze.

```java
public class MilesTravelled{
  public static void main(String[] args){
    System.out.println("Over the river and through the woods to grand mother's house I go. How should I get there?");
    int miles = 30;
    System.out.println("Her hous is "+ miles+" miles away");
    if(miles <= 3){
      System.out.println("It's not far, I'll walk");
    }else{
      if(miles <= 200){
        System.out.println("I'll drive");
      }else{
        System.out.println("I'll take a plane");
      }
    }
  }
}
```
if()
```

## 7.2.2 List of comarison operators

Here are the list of comparison operators that you can use in Java along with their mathematical equivalent

| Type    | Size    | Range |
|:--------|:--------|:------|
| byte    | 1 byte  | -128 to 127 |
| short   | 2 bytes | -32768 to 32767 |
| int     | 4 bytes | +/- ~2 billion |
| long    | 8 bytes | +/- ~9 quintillion |

| Java Syntax  | Math Symbol |
|:-------------|:------------|
| ==           | =           |
| !=           | ≠           |
| <=           | ≤           |
| <            | <           |
| >=           | ≥           |
| >            | >           |

>**Note:** Just want to clarify that `==` and `=` are different. Remember that `=` is the assignment operator, so `a = b` will set `a` to be the same as `b`. `==` on the other hand won't change either side. `a == b` will be a true statement if `a` and `b` are the same, and otherwise it will be false.

## 7.2.3 Examples
