---
title: 8.7 Bonus Answer Program
tags:
audience: programmers
type:
homepage:
---

## 8.7 Answer Program

Here's my answer program. It uses most of the hints from 8.4, you can refer to the syntax sugar section for more ways this can be improved

~~~java
import java.util.Scanner;
import java.util.Random;

public class RockPaperScissorsLizardSpock{
        public static void main(String[] args){
                int userChoice = getUserChoice();
                if(userChoice != -1){
                        //selects a random number for the computer
                        int aiChoice = getAIChoice();
                        //determine winner
                        printResult(aiChoice, userChoice);

                }
        }

        //returns 0, 1, 2, 3, or 4 for Rock, Paper, Scissors, Spock, Lizard respectively
        public static int getUserChoice(){
                //prints instructions
                System.out.println("Please type Rock, Paper, Scissors, Lizard, or Spock: ");

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

                //When the user inputs Scissors
                if(input.equals("Spock")){
                        return 3;
                }

                //When the user inputs Scissors
                if(input.equals("Lizard")){
                        return 4;
                }

                //only happens when user input something other than the 3 cases above
                return -1;
        }

        public static int getAIChoice(){
                //select choice
                Random rand = new Random();
                int aiChoice = rand.nextInt(5);

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
                if(aiChoice == 3){
                        System.out.println("Computer chose Spock");
                }
                if(aiChoice == 4){
                        System.out.println("Computer chose Lizard");
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
                //      Scissors(1)     Spock(0)
                //      Paper(2)        Scissors(1)
                //      Rock(3)         Paper(2)
                //      Lizard(4)       Rock(3)
                //      here the ai wins
                if(diff == 1){
                        System.out.println("Computer Wins");
                }

                //this corresponds to cases when the user is 1 ahead, so these cases
                //      AI                      User
                //      Spock(0)        Scissors(1)
                //      Scissors(1) Paper(2)
                //      Paper(2)        Rock(3)
                //      Rock(2)         Lizard(3)
                //      here the user wins
                if(diff == -1){
                        System.out.println("User Wins");
                }

                //this corresponds to cases when the ai is 2 ahead, so these cases
                //      AI                      User
                //      Paper(2)        Spock(0)
                //      Rock(3)         Scissors(1)
                //      Lizard(4)       Paper(2)
                //      here the user wins
                if(diff == 2){
                        System.out.println("User Wins");
                }

                //this corresponds to cases when the user is 2 ahead, so these cases
                //      AI                      User
                //      Spock(0)        Paper(2)
                //      Scissors(1) Rock(3)
                //      Paper(2)        Lizard(4)
                //      here the ai wins
                if(diff == -2){
                        System.out.println("Computer Wins");
                }

                //this corresponds to cases when the ai is 3 ahead, so these cases
                //      AI                      User
                //      Rock(3)         Spock(0)
                //      Lizard(4)       Scissors(1)
                //      here the ai wins
                if(diff == 3){
                        System.out.println("Computer Wins");
                }

                //this corresponds to cases when the user is 3 ahead, so these cases
                //      AI                      User
                //      Spock(0)        Rock(3)
                //      Scissors(1)     Lizard(4)
                //      here the user wins
                if(diff == -3){
                        System.out.println("User Wins");
                }

                //this corresponds to cases when the ai is 4 ahead, so these cases
                //      AI                      User
                //      Lizard(4)       Spock(0)
                //      here the ai wins
                if(diff == 4){
                        System.out.println("User Wins");
                }

                //this corresponds to cases when the user is 3 ahead, so these cases
                //      AI                      User
                //      Spock(0)        Lizard(4)
                //      here the user wins
                if(diff == -4){
                        System.out.println("Computer Wins");
                }
        }
}
~~~
