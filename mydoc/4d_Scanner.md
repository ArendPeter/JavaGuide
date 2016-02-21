---
title: 4.4 Scanner
tags:
audience: programmers
type:
homepage:
---
This is the fun part of the chapter. Here we get to take all the theory we've been building up and apply it to the Scanner class. Using Scanner we can take input from the user so with that our programs will transition from just always printing the same stuff on the screen to becoming interactive.

## 4.3.1 Scanner Program

Here's are program. Go ahead and type it out then we can start talking about it.

~~~java
import java.util.Scanner;

public class Input{
	public static void main(String[] args){
    Scanner scan=new Scanner(System.in);

    System.out.println("What's your name?");
    String name=scan.nextLine();

    System.out.println("How old are you?");
    int age=scan.nextInt();

    scan.close();

    System.out.println("You're name is "+name+" and you are "+age+" years old");
  }
}
~~~

When you run this it should prompt you for your name and age. Whose you've inputting those, the program should tell you what your name and age are.

## 4.3.2 Scanner Creations

Once we've imported the necessary information, and setup the class as well as the main method we create a Scanner Object.

~~~java
Scanner scan = new Scanner(System.in);
~~~

As you can see it follows the same format as we talked about in the creating objects section.	We've named the variable `scan` and the Scanner constructor takes in `System.in` as the parameter. `System.in` is an `InputStream` type, this means that the user can input data into it and the program can receive. The stream flows from the user to the program, hence Input. Similarly `System.out` is an `OutputStream`, there the stream flows from the program to the user so it's called Output. This is where the `System.out` comes from in `System.out.println()`, we're using the output stream to send data to the user. More specifically `System.in` and `System.out` are the input and output streams which are associated with the command line, so when we specify `System.in` to the Scanner we're telling it to search for the information on the command line.

> **Note:** Technically System.out is a PrintStream type, but PrintStream is a subset of OutputStream so the same idea applies

## 4.3.3 Input Methods

The next set of foreign things you probably notice are the methods we're calling from scan.

~~~java
String name = scan.nextLine();
int age = scan.nextInt();
~~~

`nextLine()` and `nextInt()` are within the scan object. This why we use `scan.` to refer to those methods. These methods don't just "do stuff" they also "give stuff". `nextLine()` "does stuff" by looking at the command line and reading in the next input, it also "gives stuff" by taking the input that it found and sending it through. This is why we put `String name =` in front of the method. We're taking the input that `nextLine()` found and we're storing it in a variable so that we can use it later. `nextLine()` pulls all the words on the line and sends it back as a `String` object. That's why we specify `String` as the type of our `name` variable. Similarly `nextInt()` tries to grab a number from the next line and returns it as a `int` type. Thus we use an specify our `age` variable to be of type `int`.

## 4.3.4 Closing Scanner

~~~java
scan.close();
~~~

Once we've taken our inputs from the command line we have no more need to `scan`. By calling `close()` within `scan` we're telling it to stop listening to the input stream. If we don't do this scan will keep listening and it will continue to consume processing power in the background.

Once we've closed we take our variables and print them in the same way as we've printed variables in previous examples.
