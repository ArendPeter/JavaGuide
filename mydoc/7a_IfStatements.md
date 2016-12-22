---
title: 7.1 If Statements
tags:
audience: programmers
type:
homepage:
---

## 7.1.1 If Statement Syntax

```java
if(morning){
  eatBreakfast();
}else{
  eatLunch();
}
```

Above is an example of the basic syntax for an **if statement**. It starts with the `if` keyword, which is reserved by Java specifically for these statements. The next part between the parentheses `( )` is called the **condition**. The condition is the most important part of the if statement. Following the condition, there are two code blocks `{ }` with an `else` separating them, and the condition determines which code block is executed.

The condition is a boolean statement, so for this code I could have included the declaration of `morning` to be `boolean morning = true;`.
If the condition is true, the first block is executed, and in this case that's `eatBreakfast()`. If the condition is false, the second block will be executed, and in this case that's `eatLunch()`.

The syntax of if statements is intended to be logical. In this case you can almost read it like a sentence: `If it's morning, eat breakfast, else eat lunch`. Another thing I should note is that the else keyword as well as the second block are optional. Sometimes you just want to do something when the condition is true and nothing if it's false.

```java
if(raining){
  bringUmbrella();
}
```
Reaching branching logic is a big step in your programming development. With if statements, your code will do different things depending on the situation, and your code will no longer just execute the same path every time. Overall, your code can be much more dynamic.

## 7.1.2 Examples

Here are some examples. I recommend trying to run each of them and then try to verify if they executed the way you expected. Also try changing the initial boolean variable to see how the execution changes.


```java
public class NotAnAddict{
  public static void main(String[] args){
    Sytem.out.println("I'm heading to class")
    boolean stillSleepy = false;
    if(stillSleepy){
      System.out.println("Grabbing coffee on the way");
    }
    System.out.println("Now I'm in class")
  }
}
```

```java
public class CatVsDog{
  public static void main(String[] args){
    boolean catPerson = true;
    if(catPerson){
      System.out.println("Buy Cat");
    }else{
      System.out.println("Buy Dog")
    }
  }
}
```

```java
public class Speeding{
  public static void main(String[] args){
    int speed = 55;//mph
    boolean lateToWork = false;
    if(lateToWork){
      speed+=10;
    }
  }
}
```
