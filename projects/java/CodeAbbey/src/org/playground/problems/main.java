package org.playground.problems;

import java.util.Scanner;

public class main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int opt = printMenu();
		
		while (opt > 5) {
			System.out.println("Invalid option.");
			opt = printMenu();
		}
		
		switch (opt) {
			case 0:
				System.out.println("Bye bye.");
				System.exit(0);
			case 1:
				Calculator.sumTwo();
			case 2:
				Calculator.sumInLoop();
			case 3:
				Calculator.sumsInLoop();
			case 4:
				Calculator.minimumOfArrays();
			case 5:
				Calculator.arrayMaxMin();
		}

	}
	
	
	private static int printMenu() {
		System.out.println("0 - Exit ");
		System.out.println("1 - Sum two numbers ");
		System.out.println("2 - Sum in Loop ");
		System.out.println("3 - Sums in Loop ");
		System.out.println("4 - Minimum values in several arrays ");
		System.out.println("5 - Minimum and maximun values in an array ");
		System.out.println("Select the problem you want to solve: ");
		Scanner in = new Scanner (System.in);
		return in.nextInt();
	}
}
