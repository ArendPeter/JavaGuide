---
title: 7.3 Boolean Logic
tags:
audience: programmers
type:
homepage:
---

## 7.3.1 Combining Conditions

Now that we know how to make basic conditions, the next step is to make more complex conditions by combining multiple simple ones. We do this by using boolean logic. Boolean logic allows us to take 1 or more boolean variables and combine them to get a single boolean variable. It works nicely with our conditions, since a condition is just a boolean variable which determines whether of not the code within the if statement is used. The primary boolean operators are AND, OR, and NOT, and we'll be working through examples for each.

## 7.3.2 AND

The **AND** operator will take in two boolean variables and the combination will be true only if both of the input variables are true. In Java and is represented using `&&`, and if we for example wanted to take the and of variable `a` and `b` it would look like `a && b`. Here's our code example:

```java
boolean havePassport = true;
boolean bagIsPacked = false;

if(havePassport && bagIsPacked){
  System.out.println("Ready to go to the airport");
}else{
  System.out.println("I'm not ready yet");
}
```

As always we can read this like a sentance and the logic should make sense, "If I have my passport and my bag is packed then I'm ready to go to the airport, otherwise I need more time to prepare". Notice that `&&` is the perfect operator for this situation. We're only ready if we both have our passport and our bag is packed, if we just had one but not the other then we wouldn't be ready.

Here's a truth table. It more explicitly clarifies how `&&` works. Each row shows a different combination. The first two columns show the inputs and the third column shows the result. As you can see the result is only true if both A and B are true, otherwise the result is false.

Truth table for A && B

| A | B | A && B |
|:--------|:--------|:--------|
| false  | false  | false |
| false  | true  | false |
| true  | false  | false |
| true  | true  | true |

## 7.3.2 OR

The **OR** operator also takes two boolean variables but the difference is that the combination will be true if one or more input variables are true. It's represented in Java using `||`, and just as with and the usage is `a || b`. Now lets look at the example.

```java
boolean needEggs = false;
boolean needFlour = true;

if(needEggs || needFlour){
  System.out.println("Have to go to the store to get some ingredients");
}else{
  System.out.println("I've got everything I need to bake my cake :)");
}
```

We can also read this as a sentance, "If I need eggs or flour then I need to go to the store, otherwise I can proceed to cook my cake". Here `||` makes perfect sense. It doesn't matter if we have need of one but not both, if we need either then we still need to go to the store so that we can bake our cake.

Here's another truth table so that you can see the explicit usage for OR.

Truth table for C = A || B

| A | B | A \|\| B |
|:--------|:--------|:--------|
| false  | false  | false |
| false  | true  | true |
| true  | false  | true |
| true  | true  | true |

## 7.3.3 NOT

The **NOT** operator is the simplest of the boolean operators. It only takes a single boolean variable and it changes it to the opposite. So a true will become a false, and a false would become a true. In Java it's represented by `!` and it can be applied to a variable using `!a`. Here's our example:

```java
boolean rubiksCubeSolved = false;
if(!rubiksCubeSolved){
    System.out.println("Immediately, go fix the cube");
}else{
    System.out.println("Immediately, go scramble the cube");
}
```

We can read this as a sentance as "If the rubiks cube is not solved, go solve solve the rubiks cube, otherwise got scramble the rubiks cube". NOT is fairly straight forward compared to the other two, however it can look confusing in some situations, particularly if there are multiple chained together. Here's the truth table which further clarifies the usage.  

Truth table for !A

| A | \!A |
|:--------|:--------|
| false  | true  |
| true  | false  |

>**Note:** You may have noticed that the above if statement could be acheived without the not by just switching the two print statements. Since swapping the code blocks would be more clear that usage is generally preferred, and it's therefore rare to see NOT used in this manner. It's more commonly seen in if statements without else sections.

## 7.3.4 Examples

As always try and run these on your own, and experiment by adjusting the variables and seeing how the result changes.

```java
public class Spaghetti{
  public static void main(String[] args){
    boolean hasNoodles = false;
    boolean hasMeatBalls = false;
    boolean hasSauce = true;
    if(!hasNoodles || !hasMeatBalls || !hasSauce){
      System.out.println("Must go to store, I don't have enough ingredients");
    }else{
      System.out.println("Ready to prepare dinner for the next 3 days :D");
    }
  }
}
```

```java
public class MidtermPanic{
  public static void main(String[] args){
    boolean hasPencil = false;
    boolean hasPaper = true;
    boolean hasCalculator = false;
    if(hasPencil && hasPaper && hasCalculator){
      System.out.println("I have everything I need for this test (except for understanding :'( )");
    }else{
      System.out.println("Oh shoot, I left something at my dorm");
    }
  }
}
```

Remeber from Chapter 3 where we talked about using parenthesis to indicate order? That can also apply to boolean logic, and it's very important to ensure correct logic.

```java
public class ComplicatedTravel{
  public static void main(String[] args){
    boolean hasDriversLiscense = false;
    boolean hasPassport = true;
    boolean internationalFlight = true;
    boolean bagIsPacked = false;

    if((hasPassport || (hasDriversliscense && !internationalFlight)) && bagIsPacked){
        System.out.println("Ready to go to the airport");
    }else{
        System.out.println("I still need to gather more things");
    }
  }
}
```
