---
title: 4.3 Using the Internet
tags:
audience: programmers
type:
homepage:
---
Before we progress too much further I'd like to give you some tips regarding how you can use the internet to your advantage. This applies not only to Java but pretty much any programming language you may learn in the future, so if you only choose to remember one thing from this guide, remember this.

## 4.3.1 Looking up errors

Here's an example of a common error, many of you have probably already seen something similar to this.

~~~
TestString.java:3: error: cannot find symbol
                string t = "Hi";
                ^
  symbol:   class string
  location: class TestString
1 error
~~~

So how do you use the internet to figure this out? Go to Google (or an inferior search engine, I won't judge) and do a search on the error. So in this case you could search `java cannot find symbol string`. The first result will most likely be a stack overflow page with someone else having the exact same issue. In this case it took me (here)[http://stackoverflow.com/questions/19471477/java-error-cannot-find-symbol-class-string] and it told me exactly what the issue was. In this case I forgot to capitalize `string`. Remember there are a lot of people learning Java and when you have an error there's pretty much a 99% chance that someone else has had that error and they've posted on stack overflow.

## 4.3.2 Documentation

Another common situation where you'll want to use the internet is when you need to reference the Java documentation. When I listed the different ways to create a Rectangle in the previous section, I didn't have that memorized. Again I went to Google and searched `java Rectangle`. When you search for a Java feature it will almost always take you to the Java API (Application Programming Interface, which pretty much means documentation) and this shows you everything you'd want to know (and more) about the feature you're searching for. In this case it took me (here)[https://docs.oracle.com/javase/7/docs/api/java/awt/Rectangle.html].

There's a lot of information to be gained from this page. The first bit of useful information is listed at the top. There I can see Rectangle is located at `java.awt.Rectangle` so now I know that if I want to use Rectangle I import it like this `import java.awt.Rectangle`. Scrolling through the page it gives you a summary about Rectangle, all of the variables within Rectangle, all of the methods within Rectangle and any other features which Rectangle happens to inherit from other Java features. I'm sure this is all overwhelming to you, and that's fine. I still feel a little overwhelmed when I reference C++ documentation but the important thing is that I can pick out the information that I need from it. In our case we're searching for different ways to construct Rectangles, so when we look at the Rectangle documentation we find the constructor summary and this shows us all the different ways in which we can create Rectangles.
