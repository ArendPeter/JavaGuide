---
title: 8.4 Project Hints
tags:
audience: programmers
type:
homepage:
---

## 8.4.1 Problem Solving Mindset

This page outlines several hints/guidelines for how to solve the problems for this assignment. For the most part all of these problems should be able to be solved with the information you already know. The difficult portion is breaking down the general problem so that it can be solved within the bounds of the rigid programming syntax that you've learned. The ability to restructure problems in this way is what makes a good programmer. Understanding syntax of your language is only the first step, learning the realm of possibilites of how the syntax can be applied is the never ending journey that keeps making you a better programmer. That said some of the hints outlined in this section might not be immediately inuitive, but as you gain more experience working with problems your understanding of the process will grow.

## 8.4.2 Use methods to structure your code

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

## 8.4.3 Represent Answers with Numbers

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


## 8.4.4 Use java.util.Random

You're going to want to use a random number generator to determine what the computer picks. There are several ways you can do this but I recommend using the [java.util.Random](https://docs.oracle.com/javase/8/docs/api/java/util/Random.html) java library. It's fairly simple to use and there are a lot of options for you to specify what you want your random numbers to look like. In this case we want it to randomly choose between 0, 1, 2 so that the computer will select Rock, Paper, or Scissors respectively, here's what the code looks like

```java
Random rand = new Random();//create an object of random for us to use
int aiChoice = rand.nextInt(3);//selects between zero up to (but not including) 3
```

>**Note:** In case your curious some other methods of generating random number is by manipulating the output of [Math.random()](https://docs.oracle.com/javase/8/docs/api/java/lang/Math.html#random) or by manipulating some time variable (maybe [System.currentTimeMillis()](https://docs.oracle.com/javase/7/docs/api/java/lang/System.html#currentTimeMillis())) and then run some operation on that. In this case you might choose 0 if it's divisible by 3, 1 if time-1 is divisible by 3, or 2 if time-2 is divisible by 3, and an easy check for divisibility by 3 is `time%3==0` (more on that in the syntax sugar section)


## 8.4.5 How to decide the winner

Writing the logic to decide who wins is the most interesting part of this assignment (at least that's what I think). There are several ways to do it and I'll be going over some of them here.

1. Check every combination

The simpleest way to do it is to check every possible combination. The player has 3 options, the computer has 3 options, so there are a total of 9 possible ways the game could play out:

| Player   | Computer |
|:---------|:---------|
| Rock     | Rock     |
| Rock     | Paper    |
| Rock     | Scissors |
| Paper    | Rock     |
| Paper    | Paper    |
| Paper    | Scissors |
| Scissors | Rock     |
| Scissors | Paper    |
| Scissors | Scissors |

To implement this we can just write 9 if statments along with a print statements to show the results

```java
if(userChoice == 0 && aiChoice == 0){
  System.out.println("It's a tie");
}
if(userChoice == 0 && aiChoice == 1){
  System.out.println("Computer Wins");
}
if(userChoice == 0 && aiChoice == 2){
  System.out.println("Player Wins");
}
.....
if(userChoice == 2 && aiChoice == 2){
  System.out.println("It's a tie");
}
```

2. Check for ties

The next step for cleaning up this code is to check for ties. This brings the number of if statements from 9 down to 7.

```java
if(userChoice == aiChoice){
  System.out.println("It's a tie");
}
if(userChoice == 0 && aiChoice == 1){
  System.out.println("Computer Wins");
}
.....
if(userChoice == 2 && aiChoice == 1){
  System.out.println("Player Wins");
}
```

3. Observing differences

This optimization is a little trickier, but it allows us to reduce it to 5 if statements, and the logic is a little less obvious.

| Player      | Computer    | Computer - Player | Winner   |
|:------------|:------------|-------------------|----------|
| Rock(0)     | Rock(0)     |  0                | Tie      |
| Rock(0)     | Paper(1)    |  1                | Computer |
| Rock(0)     | Scissors(2) |  2                | Player   |
| Paper(1)    | Rock(0)     | -1                | Player   |
| Paper(1)    | Paper(1)    |  0                | Tie      |
| Paper(1)    | Scissors(2) |  1                | Computer |
| Scissors(2) | Rock(0)     | -2                | Computer |
| Scissors(2) | Paper(1)    | -1                | Player   |
| Scissors(2) | Scissors(2) |  0                | Tie      |

From the table above we can see determine the winner by only looking at the difference between the two numbers. So 0 is always a tie, 1 always goes to the computer, 2 always goes to the player etc. We can gain an intuition for why this is by looking at how Rock, Paper, Scissors is structured in a cycle.

![](8d_RPS_cycle.png)

The arrows point to who the winner is. The cycle shows that winner is always located 1 ahead in the counter clockwise direction. A difference of 1 (and a difference of -2 as well) means that the computer is 1 ahead of the of the player so it makes sense that the computer would win there. Similaryly, a difference of -1 (or 2) corresponds to scenarios where the player is one ahead of the computer so it makes sense that the player would win in that scenario. Here's what our new code would look like.

```java
int diff = aiChoice - userChoice;
if(diff == -2){
  System.out.println("Computer wins");
}
if(diff == -1){
  System.out.println("Player wins");
}
....
if(diff == 2){
  System.out.println("Player wins");
}
```

You can experiment more with other ways to try and minimize the number of if statements that you use, there are ways to go even smaller.
