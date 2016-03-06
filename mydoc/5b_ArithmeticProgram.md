---
title: 5.2 Arithmetic Program
tags:
audience: programmers
type:
homepage:
---

## 5.2.1 Program

Here's our sample program for this chapter

~~~java
public class Arith{
  public static void main(String[] args){
    Scanner scan=new Scanner(System.in);

    System.out.println("Input a number : ");
    int a=scan.nextInt();

    System.out.println("Input another number : ");
    int b=scan.nextInt();

    int sum=a+b;
    int diff=a-b;
    int prod=a*b;
    float quo=a/b;

    System.out.println("a+b = "+sum);
    System.out.println("a-b = "+diff);
    System.out.println("a*b = "+prod);
    System.out.println("a/b = "+quo);

    float other=((a*b))/(a+b);
    System.out.println("(a*b)/(a+b) = "+other);
}
}
~~~

## 5.2.2 Explanation

Here are the lines which represent the new Information

~~~java
int sum=a+b;
int diff=a-b;
int prod=a*b;
float quo=a/b;

float other=(a*b)/(a+b);
~~~

`sum`, `diff`, and `prod` follow the format pretty much exactly. The sum of `a` and `b` are stored in `sum` and the corresponding operations for `diff` and `prod` are stored in those variables respectively. The odd difference with `quo` is that we decided to a `float` data type, instead of an `int`. Why is that? `div` is they only operation we shown which can result in a decimal point. All other ones will always be whole numbers (assuming that `a` and `b` are whole numbers, which in this case they are). For this reason we use `float` as the data type, in order to account for the possibility of decimal numbers.

When we create `other` we combine several operations and use `()` to indicate which order those operations should be executed. In this cane the `+` and `*` operations are executed first, then the `\` operation is executed, using the previous results as inputs. Since there's division involved we again need to use a `float` type rather than a `int`.

## 5.2.3 Problem?

If you run this program it should work most of the time, however if you test it long enough you should find an error. See if you can find the error, and when you do go ahead a read the next section.
