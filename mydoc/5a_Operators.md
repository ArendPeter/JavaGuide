---
title: 5.1 Operators
tags:
audience: programmers
type:
homepage:
---

## 5.1.1 Five Operators

There are 5 basic operators used in Java. Those are:

~~~
 +  -  *  /  % 
~~~

Most of these are pretty basic plus `+` adds, minus `-` subtracts, star `*` multiplies, and backward slash `\` divides. Percent `%` is called modulus. We won't be using it in this guide but in case you'd like to learn about it, here's a tutorial that I made a while ago.

[Modulus](https://www.youtube.com/watch?v=LKS3SwVByug)

In this chapter we'll be talking about how to use those operators to perform basic math on our variables.

## 5.1.1 Basic Usage

Here's a short example showing how you might use these.

~~~java
int a = 5;
int b = 3;
int c = a + b;
~~~

In this case a value of 8 will be stored in the `c` variable. The plus `+` could be interchanged with any operator and it will perform the operation accordingly. Also just because I added 2 variables doesn't mean that the things you're adding have to explicitly be variables.

~~~java
int a = 5;
int c = a + 3;
~~~

The above code would work the same way. The only requirement is that the value on the left and the value on the right are both numerical types. This should make sense since these are mathematical operators.  

Another useful feature is you can use parenthesis `()` to indicate order

~~~java
int a = 5;
int c = 2 * (a + 3);
~~~

This would store a value of 16 in `c`, it adds the `3` first to get 8 then it multiplies by 2 to get 16.

5.2 Arithmetic Program
5.3 Variable Casting
5.4 Intitialization vs. normal usage (i.e. when to include type)
5.4 Exercises
