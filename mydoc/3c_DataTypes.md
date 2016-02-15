---
title: 3.3 Data Types
tags:
audience: programmers
type:
homepage:
---
Here we're looking at some specific data types. Java variables are divided as primitive and reference types. We'll be discussing the difference between those during our first project. For now we'll be talking about eight Java primitive types as well as Strings. We'll also be looking at how these translate to bits and bytes.

## 3.3.1	Whole Numbers

Here are all the primitive types which refer to whole numbers

| Type    | Size    | Range |
|:--------|:--------|:------|
| byte    | 1 byte  | -128 to 127 |
| short   | 2 bytes | -32768 to 32767 |
| int     | 4 bytes | +/- ~2 billion |
| long    | 8 bytes | +/- ~9 quintillion |

Notice that more space for a data type results in a larger range of values. For example a byte type requires 8 bits, and that results in 2^8 or 256 possible values. Since negative numbers are useful 128 of those values are assigned to negative numbers, then zero and the positive numbers correspond to the other 128 values. The same logic applies to the other data types except they have more possible values which allows for a larger range in numbers.

## 3.3.2	Decimal

Here are all the primitive types which refer to decimal numbers

| Type    | Size    | Range |
|:--------|:--------|:------|
| float   | 4 bytes | semi precise |
| double  | 8 bytes | very precise |

It's more difficult to explain the ranges of these floating point numbers. These types are based on scientific notation which means that rather than the range being a function of how large the number is, the range is a function of how many meaningful digits there are. For example `101000` and `1010000000` are considered to be roughly the same size to these types. That said the main benefit of `double` over `float` is that you can store more meaningful digits which results in more precise numbers.

## 3.3.3	Special Types

Here are the last two primitive types

| Type    | Size    | Range |
|:--------|:--------|:------|
| boolean   | 1 bit | true/false |
| char  | 2 bytes | most characters |

`boolean` represents only true and false. There are a lot of situations where two values are all that's necessary. For example light switches only have an on and off state, and check boxes only have a checked and unchecked state.

`char` represents characters. Earlier we talked about how the whole number types take different sequences of bits and assigns those sequences to numbers. `char` uses the same technique except it assigns to characters to these sequences. Considering this `char` can actually account 2^16 or 65,536 characters. For example `A` corresponds to the sequence `00000000 01000001` and `j` corresponds to the sequence `00000000 01101010`. This specific standard is called ASCII encoding.

If you're interested in learning more about character encoding you can look at some of these links

[ASCII Table](http://www.asciitable.com/)

[Information in Language](https://www.youtube.com/watch?v=zUDqI9PJpc8)

[The Unicode Miracle](https://www.youtube.com/watch?v=MijmeoH9LT4)

## 3.3.4	Strings

The previous eight data types represent all the primitive types in the Java language. The rest of the types are considered reference types and the most common of them is `String`.

`String` is used to represent text. Behind the scenes a `String` is just a series of characters glued together. One of the reasons why `String` cant operate as primitive types is that it can't fit within a specific number of bytes. The size depends on the number of characters which are included in the string.

3 Variables
	3.4 Example Program
		3.4.1 	Wring the Program
		3.4.2	Quotations
		3.4.3 	Number modifiers
		3.4.4	String Concatenation
