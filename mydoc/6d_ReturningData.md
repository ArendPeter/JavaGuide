---
title: 6.4 Returning Data
tags:
audience: programmers
type:
homepage:
---

## 6.4.1 Return Type

Time for the final method component **Giving Stuff**. With this the method can compute data for us and then we can use the results, rather than just having it be printed to the screen. Here's the general format.

```java
public static type name(){
    //code
}
```

Just as with doing and taking the `public static` is more or less standard, however for giving the 3rd keyword is different. This 3rd keyword is called the **Return Type**, and it signals the type of data that's given back. `void` is actually a special return type which signifies that nothing is given back. In this case I've left the parenthesis `()` empty but of course if you want the method to also take parameters that's fine too. Here are some example definitions.

```java
public static String getName(){}
public static double getAverage(int a, int b){}
public static int getSum(int a, int b, int c){}
```

For each of these look at the type I chose for the return type and think about why I chose those specific types. Also as a general convention methods which return something often have the term get prefixing their name. This isn't always the case but at the very least methods which give something back usually are named in such a way the returning is implied.

At this point you should be able to read through the method definitions in the Java documentation and gain a general understanding of how the methods work ( [try these](https://docs.oracle.com/javase/7/docs/api/java/util/Scanner.html#toString) ).

## 6.4.2 Return Keyword

In order to implement this we use the **return** keyword. Here's a simple example.

```java
public static double getPI(){
  return 3.141592653f;
}
```

With this you could write a program like this.

```java
double pi = getPI();
double a = pi / 3;
System.out.println("60 degrees in radians is " + a);
```

So after the return keyword you put the value you wish to give back. In this case it gives back the vaue of pi so on the line `double pi = getPI();` we call the method, receive the value of PI, and the store the value in the variable `pi`;

## 6.4.3 Example Program

Here's another example program.

```java
public class MethodsThatGive{
  public static void main(String[] args){
    System.out.println("Average: "+getAverage(3,4,5));
    System.out.println("My name is: "+getName());
  }

  public static float getAverage(int a, int b, int c){
    int sum = a + b + c;
    return sum / 3f;
  }

  public static String getName(){
    return "Arend Peter";
  }
}
```

## 6.4.4 Exercises

1. Create a method which returns your birth date as a string.
2. Create a method which takes 4 numbers and returns the product.
3. Create a method which takes 3 numbers and return the [Harmonic Mean](https://en.wikipedia.org/wiki/Harmonic_mean).
4. Create a method which takes 3 numbers (yards, feet, and inches) and converts it to centimeters.
5. Create a method which takes Celsius and converts it to Fahrenheit.
6. Create a method which takes 3 numbers (month, day, year) and return a string with the format mm/dd/yyyy.
