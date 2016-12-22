---
title: 4.2 Objects
tags:
audience: programmers
type:
homepage:
---
## 4.2.1 Creating Objects

We learned how to create variables in the previous chapter. This is what the syntax looked like:

~~~java
int favNum = 5;
~~~

Unfortunately, this technique only really works for primitive types (with String being the exception). Reference type variables are different. First off, reference type variables are called **objects**, and in order to make objects, you need to use the following syntax:

~~~java
Point p = new Point(3,4);
~~~

So in this example, `Point` is the type, and similar to the previous style, this variable definition starts with a type, then variable name, then an equals sign. `Point p = `. Then after that we use the **new operator** to indicate that we want to create a new object. Next we have the type name again, and after that within the parentheses `()`, we specify the initial properties of the object. In this case since our variable represents a Point object, we specify the x and y position for the parameters.

## 4.2.3 Constructors

You may have noticed that `Point(3,4)` looks a little like a method. Well it is a method. It's actually a special type of method called a **constructor**. The main purpose of constructors is to create new reference type variables. Generally, data types have multiple constructors, and you may choose which you want to use depending on what settings you want to specify. As an example, here are some of the different ways you could construct a Rectangle object.

~~~java
Rectangle r1 = new Rectangle(); //sets the upper left to (0,0), with width 0 and height 0
Rectangle r2 = new Rectangle(3,5); //sets the upper left to (0,0), with width 3 and height 5
Rectangle r3 = new Rectangle(1,4,3,5); //sets the upper left to (1,4), with width 3 and height 5
~~~

## 4.2.4 Examples

Here's an example based on the the point code snippet from earlier:

~~~java
import java.awt.Point;

public class ObjectExample{
	public static void main(String[] args){
		Point p = new Point(3,4);
		System.out.println("here's a point: " + p);
	}
}
~~~
