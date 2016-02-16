---
title: 3.4 Programming with Variables
tags:
audience: programmers
type:
homepage:
---
## 3.4.1 Writing the Program

Go ahead and write the following program

~~~java
public class Variables{
        public static void main(String args[]){
                //variables
                String name="Arend Peter";
                byte age =21;
                String color="Orange";
                boolean likesCats=true;
                short yearOfBirth=1993;
                char c='i';
                float gpa=3.66f;

                //printing information
                System.out.println("Hello my name is "+name);
                System.out.println("I am "+age+"        years old");
                System.out.println("My favorite color is "+color);
                System.out.println("I would rather own a cat than a dog");
                System.out.println("The above statement is "+likesCats);
                System.out.println("I was born in "+yearOfBirth);
                System.out.println("My favorite character in Spiderman is : "+c);
                System.out.println("My current GPA is "+gpa);
        }
}
~~~

Once you've done that try and compile it, then run it. You'll probably get errors since it's a lot of stuff to copy down. This is where you'll start to figure out how to interpret the error messages. They're pretty annoying at first but you'll get used to them and pretty soon you'll see the errors as friendly messages kindly guiding you towards a flawless program.

Here are some of the most common errors you'll want to look out for.

* Check case sensitivity
* Watch your semi colons
* Make sure all your starting brackets `(` `{` have matching ending brackets `)` `}`

This program should be straight forward for the most part. It'll take the values of all your variables and print them out along with some other text. The main thing I want you to pay attention to is the selection of the variable types. For each one we want select the variable type that represents the information most efficiently. Some of the variables need to store words so `String` is the only reasonable type for those. The `gpa` variable needs to store a decimal value which narrows our options to `float` and `double`. Since people rarely keep track of their GPA past two decimal places `float` is sufficient to express this variable. Lastly if we look at `yearOfBirth`, whole numbers make the most sense for this variable. Also if we look at the ranges for the various whole number primitive types, `short` is the smallest type which covers the range of years that could be reasonably inputted. I'll leave it to you to think through the rest of the types.

If you feel like it makes sense try adjusting some of the values and see how it changes the outputs. Playing with code is the best way to work towards understading it :). There are several technicalities which I don't expect you to understand, so I'll be talking about those next.

## 3.4.2 Quotations

Notice that two quotation types are used.

~~~java
String color="Orange";

char c='i';
~~~

Double quotations `""` are used when you're working with Strings, and single quotes `''` are used when referring to characters. This is why `"Orange"` gets double quotes and `'i'` gets single quotes. `"Orange"` on it's own is already a String, but the `String color=` preceding it indicates that the String should be stored in the variable `color`. Likewise `'i'` on it's own is already a character, but the preceding `char c=` indicates that the character should be stored in the variable `c`.
Bottom line, by looking at the type of quotes that are used you can tell what type of variable is being used.

## 3.4.3 String Concatenation

Let's look at one of the print statements.

~~~java
System.out.println("I was born in " + yearOfBirth);
~~~

For `System.out.println(...);` to work it has to take a single string as a parameter (It's okay if this doesn't make sense, we'll talk more about methods and their parameters during chapter 6). We're inputting `"I was born in " + yearOfBirth`. When looking at `"I was born in "` we can tell that it's a String by the double quotes `""`, however we're adding the variable `yearOfBirth` which is of type `short`. This is kind of odd. As we'll see later the add `+` operation is usually applied to numerical types, however here a `String` type is being added to a `short`? Luckily Java does what we want. It realizes that we want to see `yearOfBirth` as a `String` so it converts it accordingly. Unfortunately not all languages/programs are smart enough to do this (I'm looking at you [Game Maker **>:(**](https://www.youtube.com/watch?v=pd-r0e7e3X8) ). Next it performs an operation called **String Concatenation** where it takes the two Strings and it glues them together. This leads the output to be `I was born in 1993` for this particular line.

## 3.4.4 Number Modifiers

You may have noticed that there's an `f` after the value in the `gpa` variable.

~~~java
float gpa=3.66f;
~~~

To understand why this is I first have to mention that Java sees all numbers as `int` types behind the scenes. So with the age line ( `byte age = 21;` ), Java actually internally sees the `21` as an integer type, and when it gets stored as a `byte` the data gets **down cast**. This works fine since `int` has a larger range a values than age so the down casting doesn't cause an issue. However if we did the same thing with long `long bigNumber = 100000000;` we'd have a problem since `100000000` is too large to temporarily store as an `int`. For this reason we need to specify that the number should be seen as a `long` by adding an `l`.

~~~java
long bigNumber = 100000000l;
~~~

The same applies whenever we're working with values that don't fit within int, so for `float` we need to `double` we need to add an `f` and a `d` respectively.

Variable types with their respective specifier

| Type | Specifier    | Example |
|:--------|:--------|:------|
| long   | l | long bigNumber = 100000000l; |
| float  | f | float flo = 5.2f; |
| double | d | float dbl = 3.14159265359d; |
