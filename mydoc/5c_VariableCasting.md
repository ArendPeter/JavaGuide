---
title: 5.3 Variable Casting
tags:
audience: programmers
type:
homepage:
---

## 5.3.1 Mixing Types

First off, we need to talk about how Java mixes types. If you're performing an operation on two variables that have the same type then it's pretty clear that the output should have that type too ```(int) * (int) = (int)```. However, if the numbers have different types then Java will choose the more general type to be the output. So if one of the inputs is a decimal type, and the other can only handle whole numbers, then Java will have the output take on the decimal type. Similarly, if they both are whole numbers but one is capable of handling a larger range, the output will take on the type of the input with the larger range. Here are a few examples:

~~~
(float) * (int) = (float)
(double) * (float) = (double)
(byte) * (int) = (int)
(int) * (long) = (long)
~~~

That said, if we look at our division operation ```float quo = a / b```, we have `a` and `b` which are both ints, so java lets the output be an int since they're both the same type. After the output is computed, it's stored within the variable ```quo```, and it becomes a float, but at that point it's too late since the damage of integer division has already been done.

## 5.3.2 Casting syntax

In Java you can expressly **cast** a variable to a different type. Here's how we do it in this case.

~~~java
float quo = ((float)a)/b;
~~~

The ```(float)``` section changes `a` from an int type to a float type. Then when the operation occurs, the types look as follows:

~~~
(float) \ (int) = (float)
~~~

Now it correctly performs the division operation and outputs a float. Also notice we added parentheses ```()``` to ensure that the cast occurs before the division.

In general we can cast any variable to a different type using this syntax:

~~~
(type)varName
~~~

Here are some more examples

~~~java
float c = ((float)7)/5; //c = 1.4f;
float d = ((int)(5f))/3; //d = 1;
int e = (byte)150; //e = -106
~~~

## 5.3.3 Floating Point errors

The error we just discussed was an arithmetic error called **Integer Division**. There's another error called **Floating Point Precision**. I won't talk about the details of this, but if you're interested in learning about it, I've included a link to a video:

[Float Point Precision](https://www.youtube.com/watch?v=PZRI1IfStY0)
