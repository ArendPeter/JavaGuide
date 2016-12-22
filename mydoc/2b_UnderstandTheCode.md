---
title: 2.2 Understanding the Code
tags:
audience: programmers
type:
homepage:
---
Now, let’s break down the program. Here’s the entire program again for reference.

~~~
//My first Java program  

public class HelloWorld{  
    public static void main(String[] args){  
        System.out.println("Hello World");  
    }  
}  
~~~

## 2.2.1 Comments

~~~
//My first Java program  

~~~

The first line is a comment. Comments don’t affect your program in any way. The only purpose is to clarify what’s happening in your code to anyone who may be reading it.
There are 2 primary ways to write comments in Java: `//` and `/*` `*/`.
After typing `//` the remainder of the line will be interpreted as a comment.
After typing `/*` everything following until `*/` will be considered a comment. This format is useful if you want your comment to span multiple lines or if you want to write more code on the same line after the comment.
After the comment there’s an empty line. In Java (and most other programming languages), you can include as much whitespace between symbols as you like. This empty line will have no effect on the program but serves to organize the various sections of our program.

## 2.2.2 Class declaration

~~~
public class HelloWorld{

}
~~~

This line declares a class. There are several details here which we’ll skip over. For now you can think of classes as programs in Java, and all your code must be within a class.

> **Note:**
> In reality, programs can have many classes; however, you don’t learn about working with multiple classes until you start working with Object Oriented programming, which often isn’t taught until your second semester of learning Java.

`public` is an access modifier. We’ll skip over it for now, as it won’t be significant until we start working with larger programs.

`class` is the keyword we use to indicate that we’re defining a class.

`HelloWorld` represents the name of our class. In Java, when you make a class, the name of the file must always match that class name. This is why we named our file “HelloWorld.java”.

`{ }` brackets are common in most programming languages. They’re used to separate different regions. In this case it indicates what’s in this class. So everything between those brackets is considered to be in the HelloWorld class.

## 2.2.3 Main method

~~~
public static void main(String[] args){

}
~~~

This line is the definition for the main method. Again, there are a lot of details here which we’ll skip over.

`public` is the same keyword that was used previously.

`static` indicates that the method is being referred to from a static perspective. In my opinion, static reference is the programming concept which is the most difficult to understand. It really requires knowledge of Object Oriented Programming in order to comprehend the concept. I’m going to skip over it for now. In general if you get errors related to static reference, you can just add/remove the static keyword, and it should fix the error.

`void` is the return type. We’ll be talking about this more when we talk about making our own methods (Chapter 6).

`main` is the name of the method. Methods are areas of code which can be called and run from other places in the code (again this will be more clear later). The main method is a special method as it’s the method where your program starts. If your program has many methods, then upon running the program Java will search for the method called main, and that’s the one which will be run.

`( )` parentheses can mean multiple things in Java. In this case, since it’s directly after a method name, it’s used to specify input parameters. So everything within these parentheses are the defined input parameters for the main method. We’ll be talking more about input parameters when we talk about methods (Chapter 6).

`String[] args` this is the input parameter for the main method.

`{ }` as with the class definition the brackets indicate what’s inside of our method. So here everything that’s inside the two brackets is within the main method.

## 2.2.4 Methods

So we're not going to be working with methods in great detail until Chapter 6, but until then I want you to have a working understanding of them, so let's take care of that now.

A method (which is pretty much the same as a function if you're familiar with that terminology) is a piece of code that does stuff. You can make use of the code by calling the method and that looks like this.

~~~java
methodName(1,2,3);
~~~

Here, `methodName` is the name of the method. You know that `methodName` is a method because it's followed by a pair of parentheses `()`. When you're calling a method, you put the parameters (also called arguments) between the parentheses `()`. The individual parameters are separated by commas `,`, so in this case we have 3 parameters, and they are `1`, `2`, and `3`.

That's your working definition of a method. You'll notice that `System.out.println(...)` follows this format.

## 2.2.5 Printing to the console

~~~java
System.out.println("Hello World");
~~~

This is the only line that’s executed in our main method. `System.out.println()` is a method that is used to print things to the console. It takes a String (covered in Chapter 3) as an input. Whenever you have text which should be seen as a series of words (formally called Strings) as opposed to Java code, you use the double quotes `“ ”`. Here we’re saying that Hello World is a String, so we put it in quotations.

To print more lines to the console, you can just call this method multiple times.

> **Note:** An important distinction to be made, which will be clarified more in Chapter 6, is the difference between calling and defining methods. In this case we’re calling System.out.println(), so Java will search for the area where System.out.println() is defined, and it will execute the code that’s written there. Here we’re defining the main method. So when the system calls the main method, it looks to this area where we’ve defined it.
