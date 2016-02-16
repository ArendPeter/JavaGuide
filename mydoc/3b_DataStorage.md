---
title: 3.2 Data Storage
tags:
audience: programmers
type:
homepage:
---

I'd liked to take some time to motivate the reason for having types, and to do this we'll need to look at how our computers go about storing data.

## 3.2.1 Storing Numbers

Let's say for example that we have the following code which has four variables storing different numbers.

~~~java
byte x1 = 5;
byte x2 = 65;
byte x3 = 103;
byte x4 = 43;
~~~

You can think of computer memory as a continuous series of number. So that said one way we could consider storing the data is as follows.

~~~
56510343
~~~

The issues with this method becomes clear pretty quickly. When the numbers are placed side by side in this manner it's impossible for us to tell where one number starts and another ends. Another way we could store them is to apply a rule stating that each number must be three digits and we can add leading zeros where necessary.

~~~
005065103043
~~~

Of course in reality this isn't actually the way computers see numbers. We write our numbers using base ten but since the computer operates on ones and zeros it uses base two (binary) to express these numbers.

## 3.2.2 Quick Binary Lesson

Here we'll be looking into how numbers can be written in base two.

We'll start with this example number

~~~
136
~~~

Since it's base 10 this means 1 group of 100, 3 groups of 10, and 6 groups of 1. Here's another way that can be written.

~~~
1 * 10^2  +  3 * 10^1  +  6 * 10^0
~~~

Now the same number can be expressed using powers of two instead of powers ten

~~~
1 * 2^7  +  0 * 2^6  +  0 * 2^5  +  0 * 2^4  +  1 * 2^3  +  0 * 2^2  +  0 * 2^1  +  0 * 2^0
~~~

This shows us that the binary version of `136` is

~~~
10001000
~~~

Here's some additional terminology that applies to binary numbers on computers

* Single binary digits are called *bits*
* Sets of 8 bits are called *bytes*

So we could say that the number `136` requires a *bytes* of space.

If you are interested in learning more about binary and number bases in general here are some videos for you to check out

[255 & Pacman](https://www.youtube.com/watch?v=umYvFdU54Po)

[15 and Hexadecimal](https://www.youtube.com/watch?v=9xbJ3enqLnA)

[Base 12](https://www.youtube.com/watch?v=U6xJfP7-HCc)

[Why 1/1/1970 Bricks Your iPhone](https://www.youtube.com/watch?v=MVI87HzfskQ)

## 3.2.3 Storage with Binary
Now let's return to our previous Example

~~~
005065103043
~~~

Now that we understand binary we can we write this is a manner that's more representative of how a computer would see the values. I've divided it into multiple lines to make it more clear.

~~~
00000101
10000001
11000111
01001011
~~~

Now we can clearly see that a byte of data is required to store each value. At this point it should also be clear to you that in general bigger numbers take up more space in memory.
