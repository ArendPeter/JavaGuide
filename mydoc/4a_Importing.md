---
title: 4.1 Importing
tags:
audience: programmers
type:
homepage:
---
If you take a look at Java programs you'll generally see some code that looks like this at the beginning

~~~java
import java.lang.Math;
import java.util.Vector;
import java.awt.KeyboardListener;
import javax.swing.JFrame;
~~~

These are called **imports** and their primary purpose is to import code that other people have made in order to make you life easier. For example by importing the Math class (as seen above) you gain access to a lot of of math constants and methods which would have been hard to implement otherwise. These methods include sin and cos. It also includes the constants PI and E. We'll be talking about how to use the imports soon but for first there's a lot of meaning in those import statements that I need to explain.

##	4.1.1 Pacakage vs. Class

Let's take a closer look at one of the imports.

~~~java
import java.lang.Math;
~~~

You see there are pretty much 3 components: `java`, `lang`, and `Math`. `Math` is a class, it's just like the ones you or me would write. (you can even see the code for Math [here](http://www.docjar.com/html/api/java/lang/Math.java.html). `java` and `lang` are called **packages**. For our purposes you can think of packages as folders. So there's the root `java` folder and `lang`, `util`, and `awt` are all subdirectories of that folder. `javax` actually stands for `java extension` and the code found in this folder was actually added a lot later than the code found in the `java` folder. With the Java naming convention you can tell the difference between classes and packages by whether or not they start with a capitol letter.

##	4.1.2 Dot Operator

If you look at the import statements you'll see that the packages and classes are separated by periods `.`. This is called the **dot operator** and in programming it indicates ownership. So in our imports `java.lang.Math` means `java` who owns `lang` who owns `Math`. It's actually very similar to `'s` in english so `import java.lang.Math` pretty much has the same structure as `take out Bob's Mom's Dog`.

##	4.1.3 Example

Here's an example of how you would use the `Math` class

~~~java
import java.lang.Math;

public class MathTest{
		public static void main(){
			System.out.println(Math.max(2,7));
		}
}
~~~

Here we use the `max` method to find out whether `2` or `7` is bigger, so this program should print out `7`. Notice that we used the dot operator is indicate that the max method belongs to the Math class. Also now that we've covered the dot operator you may notice that `System.out.println()` also uses the dot operator. So `System.out.println()` really means, call the `println` method from within `out` which is in `System`.

> **Note:** I've been misleading you slightly. Since the classes in java.lang are so useful Java actually imports it automatically without you needing to type out the import statement everytime. I just think that the Math class was a perfect candidate for the first example so I used it. Having the import there anyway doesn't hurt anything it's just unnecessary.

Chapter 4 Scanning for Input
4.1 Importing
4.2 Objects
	4.2.1 Creating Objects
	4.2.2 new Operator
	4.2.3 Constructors
	4.2.4 Examples
4.3 Scanner
	4.3.1 Scanner Program
	4.3.2 Scanner Creations
	4.3.3 Input Methods
	4.3.4 Closing Scanner
4.4 Exercises
