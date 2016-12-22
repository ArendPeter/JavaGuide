---
title: 4.1 Importing
tags:
audience: programmers
type:
homepage:
---
If you take a look at Java programs, you'll generally see some code that looks like this at the beginning:

~~~java
import java.lang.Math;
import java.util.Vector;
import java.awt.KeyboardListener;
import javax.swing.JFrame;
~~~

These are called **imports**, and their primary purpose is to import code that other people have written in order to make your own life easier. For example, by importing the Math class (as seen above), you gain access to a lot of math constants and methods which would have been hard to implement otherwise. These methods include sin and cos. It also includes the constants PI and E. We'll be talking about how to use the imports soon, but first there's a lot of meaning in those import statements that I need to explain.

##	4.1.1 Package vs. Class

Let's take a closer look at one of the imports.

~~~java
import java.lang.Math;
~~~

You can see that there are pretty much 3 components: `java`, `lang`, and `Math`. `Math` is a class, just like the ones you or I would write. (You can even see the code for Math [here](http://www.docjar.com/html/api/java/lang/Math.java.html). `java` and `lang` are called **packages**. For our purposes, you can think of packages as folders. So there's the root `java` folder and `lang`, `util`, and `awt` are all subdirectories of that folder. `javax` actually stands for `java extension`, and the code found in this folder was actually added a lot later than the code found in the `java` folder. With the Java naming convention you can tell the difference between classes and packages by whether or not they start with a capital letter.

##	4.1.2 Dot Operator

If you look at the import statements, you'll see that the packages and classes are separated by periods `.`. This is called the **dot operator**, and in programming it indicates ownership. So in our imports, `java.lang.Math` means `java` who owns `lang` who owns `Math`. It's actually very similar to `'s` in english so `import java.lang.Math` pretty much has the same structure as `let out Bob's Mom's Dog`.

##	4.1.3 Example

Here's an example of how you would use the `Math` class:

~~~java
import java.lang.Math;

public class MathTest{
	public static void main(){
		System.out.println(Math.PI);
	}
}
~~~

Here we use the `PI` variable in the Math class to print out the value of PI. Notice that we used the dot operator to indicate that PI belongs to the Math class. Also now that we've covered the dot operator, you may notice that `System.out.println()` also uses the dot operator. So `System.out.println()` really means, call the `println` method from within `out` which is in `System`.

> **Note:** I've been misleading you slightly. Since the classes in java.lang are so useful, Java actually imports them automatically without you needing to type out the import statement every time. I just thought that the Math class was a perfect candidate for the first example, so I used it. Having the import there anyway doesn't hurt anything. It's just unnecessary.
