---
title: 8.5 Answer Program
tags:
audience: programmers
type:
homepage:
---

## 8.5 Answer Program

This is my final program, it uses the hints from 8.4, you can use this as a reference.

~~~java
import java.util.Scanner;
import java.util.Random;

public class RockPaperScissors{
        public static void main(String[] args){
                int userChoice = getUserChoice();
                if(userChoice != -1){
                        //selects a random number for the computer
                        int aiChoice = getAIChoice();
                        //determine winner
                        printResult(aiChoice, userChoice);
                }
        }

        //returns 0, 1, or 2 for Rock, Paper, and Scissor respectively
        public static int getUserChoice(){
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
        }

        public static int getAIChoice(){
                //select choice
                Random rand = new Random();
                int aiChoice = rand.nextInt(3);

                //print the string corresponding to the choice
                if(aiChoice == 0){
                        System.out.println("Computer chose Rock");
                }
                if(aiChoice == 1){
                        System.out.println("Computer chose Paper");
                }
                if(aiChoice == 2){
                        System.out.println("Computer chose Scissors");
                }

                //send back decision
                return aiChoice;
        }

        public static void printResult(int aiChoice, int userChoice){
                //when they chose the same thing
                if(aiChoice == userChoice){
                        System.out.println("It's a tie");
                }

                //compute difference, used to check results later
                int diff = aiChoice - userChoice;

                //this corresponds to cases when the ai is 1 ahead, so these cases
                //      AI                      User
                //      Paper(1)        Rock(0)
                //      Scissors(2)     Paper(1)
                //      here the ai wins
                if(diff == 1){
                        System.out.println("Computer Wins");
                }

                //this corresponds to cases when the user is 1 ahead, so these cases
                //      AI                      User
                //      Rock(0)         Paper(1)
                //      Paper(1)        Scissors(2)
                //      here the user wins
                if(diff == -1){
                        System.out.println("User Wins");
                }

                //this corresponds to cases when the ai is 2 ahead, so these cases
                //      AI                      User
                //      Scissors(2) Rock(0)
                //      here the user wins
                if(diff == 2){
                        System.out.println("User Wins");
                }

                //this corresponds to cases when the ai is 2 ahead, so these cases
                //      AI                      User
                //      Rock(0)         Scissors(2)
                //      here the ai wins
                if(diff == -2){
                        System.out.println("Computer Wins");
                }
        }
}
~~~
