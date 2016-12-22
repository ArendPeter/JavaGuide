---
title: 5.4 Variable Initialization vs. Declaration vs. Assignment
tags:
audience: programmers
type:
homepage:
---

So far we've been preceding variable names with their types most of the time. However, that's not always the case.

~~~java
class VariableExample{
  public static void main(String[] args){
    int a;
    int b = 5;
    a = 6;
    b = 7;
  }
}

~~~

Here we have an `int` prior to `a` the first time but not the second time. To fully understand when this happens, we'll need to distinguish between declaration, initialization, and assignment.

## 5.4.1 Assignment

**Assignment** is whenever you're storing data in the variable.

~~~java
int a; // not an assignment
int b = 5; // assignment
a = 6; // assignment
b = 7; // assignment
~~~

## 5.4.2 Initialization

**Initialization** is when you assign data to a variable for the first time. With all other assignments, you're overwriting data. With initialization, there was no previous data to overwrite.

~~~java
int a; // not an initialization
int b = 5; // initialization
a = 6; // initialization
b = 7; // not an initialization
~~~

## 5.4.3 Declaration

**Declaration** is the point at which you create a variable. At this point, Java knows nothing about the variable, so it's necessary to specify the type. This is the only time you need to specify the type since for all future time, Java can refer to this declaration to determine what the type is.

~~~java
int a; // declaration
int b = 5; // declaration
a = 6; // not a declaration
b = 7; // not a declaration
~~~

Notice that when you initially create a variable, you're always declaring it, but you're not necessarily initializing it. Sometimes you want to declare a lot of variables, but you don't know which values to initialize them to yet.
