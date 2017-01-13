---
title: 8.4 Project Outline
tags:
audience: programmers
type:
homepage:
---

## 8.4.1 Hint 1

<details>
<b>Problem Solving Mindset</b>

This page outlines several hints/guidlines for how to solve the problems for this assignment. For the most part all of these problems should be able to be solved with the information you already know. The difficult portion is breaking down the general problem so that it can be solved within the bounds of the rigid programming syntax that you've learned. The ability to restructure problems in this way is what makes a good programmer. Understanding syntax of your language is only the first step, learning the realm of possibilites of how the syntax can be applied is the never ending journey that keeps making you a better programmer. That said some of the hints outlined in this section might not be immediately inuitive, but as you gain more experience working with problems your understanding of the process will grow.

</details>

## 8.4.2

<details>
<b>Structure with Methods</b>

The first hint is to structure the program with methods. Breaking your program down into methods feels like an annoying chore at first but it useful because it forces you to break the problem down into smaller pieces, and it's easier to break the smaller pieces down into code. For mine I used 3 methods, `getUserChoice()`,  `getAIChoice()`, and `printResult()`.

`getUserChoice()` will work with Scanner and handle all the logic for reading the user's decision and the returns what the user selected.

`getAIChoice()` will generate a random decision and return it.

`printResult()` takes the user and ai choice as inputs, runs the logic to determine who the winner was and then prints out who the winner was.

With these 3 methods I can handle each of these problems independantly and this will make it easier since I won't have to keep track of as much information at a time. It also greatly simplifies the the high level view of the program. My main method ended up looking like this.

```java
int userChoice = getUserChoice();
//check if the input was valid
if(userChoice != -1){
    //selects a random number for the computer
    int aiChoice = getAIChoice();
    //determine winner
    printResult(aiChoice, userChoice);
}
```

Simplifying the logic of your code in this way will also make it easier to track down bugs if you have problems and if other people are reading your code this will allow them to understand it more easily.
</details>

## 8.4.3 Hint 3

<details>
<b>Represent Answers with Numbers</b>

For my program I decided to represent the possible input options as integers where Rock, Paper, Scissors, would correspond to 0, 1, and 2 respectively. There are many reasons why this is useful. First off this will minimize the number of times you'll have to use the string comparison `str1.equals(str2)` and that will make the code look cleaner. It will also make the logic for generating the random response in `getAIChoice()` easier and it will allow for some simpler logic within `printResult()`.

My `getUserChoice()` method consisted of a series of if statements which check for various user inputs and returns the corresponding number.

```java
//prints instructions
System.out.println("Please type Rock, Paper, or Scissors: ");

//gets user input
Scanner scan = new Scanner(System.in);
String input = scan.nextLine();

//when the user inputs Rock
if(input.equals("Rock")){
    return 0;
}

//when the user inputs Paper
if(input.equals("Paper")){
    return 1;
}

//When the user inputs Scissors
if(input.equals("Scissors")){
    return 2;
}

//only happens when user input something other than the 3 cases above
return -1;
```

As an added challenge you could try and add some more logic to allow for the input to be case insensitive.

</details>

## 8.4.4 Hint 4

<details>
<b>Use java.util.Random</b>
</details>

## 8.4.5 Hint 5

<details>
<b>Determining Winner</b>
</details>
