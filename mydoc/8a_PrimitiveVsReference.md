---
title: 8.1 Primitive Vs Reference
tags:
audience: programmers
type:
homepage:
---

## 8.1.1 Outline

This section features a project, but before we get started with that we need to go over the differences between primitive and reference types. The main reason for this is because we'll be comparing strings in this project and unlike primitives, which can simply be compared using `a == b`, strings have to use a more complicated syntax `a.equals(b)`. This has to do with how Java handles reference types (such as strings) differently from primitive types. This could have been covered in the data types section but the answer is fairly involved and I wanted to keep that part simple. However this is something that you should probaly know eventually though so now's as good a time as any.   

## 8.1.2 Comparing Primitives

Let's talk in some details about what the computer does when it sees `a == b`. As stated in chapter 3, memory on your computer is split into a bytes, you can think of the memory as a big dressor with millions of drawers and each drawer holds a single byte. If our variables are `byte a` and `byte b`, then both variables would be associated with their own drawer in memory.

....Insert helpful diagram here...

So in this image `a` is associated with drawer 10 and `b` is associated with drawer 15. For this example we'll say that both a and b are equal to `5`. If that's converted to binary that's equal to `00000101`, so in this scenario both drawers have the value `00000101`. When the computer runs `a == b`, it opens the drawer associated with `a` and the drawer associated with `b` and compares the values within the drawers. Since both values are the same it will return true in this case.

## 8.1.3 Comparing Reference types

The key difference with reference types is that it stores an address in the drawer instead of a value. If if we had variables `String str1 = "Hello"` and `String str2 = "Hello"` the actual value in the drawer refered to by `str1` might be something like `00010110` (which is 22 in decimal), and `str2` might be `00100100` (which is 36 in decimal). These numbers have nothing to do with the value `Hello`, it only says where that value is located. So if you the computer tried to execute `str1 == str2`, it would open of the drawers and compare `00010110` and `00100100` and then subsequently return false. Using `str1.equals(str2)` work better because `equals()` knows how the data is structured so it can actually compare the information more intelligently.

....Insert helpful diagram here...

## 8.1.4 So why Reference types?

This leads us to the question of why would you use reference types? `str1` is already pointing to a drawer, why does that drawer need to point to another drawer? Can't the information just be stored in the first drawer? Since `Hello` requires more than a single byte of storage the information is actually spread out over multiple drawers. This is also the case with larger primitive types such as `int` or `long` but that doesn't cause a problem since they always take up the same number of drawers (4 for `int`, 8 for `long`), so when the variable is first created the memory can just assign a that number of drawers to that variable.

....Insert helpful diagram here...

Strings (and reference types in general) are different since the number of bytes required to store them can vary by a lot. Additionaly their sizes can change after they're initially created. For example

```
String str = "Hello";
str = "Hello World";
```

Here it will initially assign enough drawers to store `Hello` but then it needs more drawers when the variable is changed to `Hello World`. Because of the way memory works, changing the size of the variable actually means that a whole new set of drawers need to be selected for the variable. If this was a primitive type then `str` need to pointto a different drawer, but since it's a reference type only the value within `str` needs to be changed.

....Insert helpful diagram here...
