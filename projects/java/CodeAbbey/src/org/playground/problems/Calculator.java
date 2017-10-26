package org.playground.problems;

import java.util.Scanner;

public class Calculator {
	
	private static int sumTwo (int a, int b) {
		return a + b;
	}
	
	public static void sumTwo() {
		System.out.println("Insert the two numbers you want to sum: ");
		Scanner in = new Scanner (System.in);
		int a, b;
		a = in.nextInt();
		b = in.nextInt();
		
		System.out.println(sumTwo(a, b));
	}
	
	public static void sumInLoop() {
		System.out.println("Insert the amount of numbers to sum, ");

		System.out.println("Then Insert the values themselves: ");
		Scanner in = new Scanner (System.in);
		int n, sum = 0;
		n = in.nextInt();
		
		for (int i = n-1; i >= 0; i--) {
			sum += in.nextInt();
		}
		 
		System.out.println(sum);
	}
	
	public static void sumsInLoop() {
		System.out.println("Insert the number of pairs to sum. ");

		System.out.println("Then Insert the values themselves: ");
		Scanner in = new Scanner (System.in);
		int n, a, b;
		n = in.nextInt();
		int[] results = new int[n];
		
		for (int i = 0; i < n; i++) {
			a = in.nextInt();
			b = in.nextInt();
			results[i] = a + b;
		}
		
		for (int i = 0; i < n; i++) {
			System.out.print(" " + results[i]);
		}
	}
	
	public static void minimumOfArrays() {
		System.out.println("Insert the number of arrays.");
		System.out.println("Insert the number of values on each array.");

		System.out.println("Then Insert the values themselves: ");
		Scanner in = new Scanner (System.in);
		int n, v, aux = 0;
		n = in.nextInt();
		v = in.nextInt();
		
		int[][] values = new int[n][v];
		int[] results = new int[n];
		
		for (int i = 0; i < n; i++) {
			aux = 0;
			for (int j = 0; j < v; j++) {
				values[i][j] = in.nextInt();
				if (aux > values[i][j] || aux == 0) {
					aux = values[i][j];
				}
			}
			results[i] = aux;
		}
		
		for (int i = 0; i < n; i++) {
			System.out.print(" " + results[i]);
		}
	}
	
	public static void arrayMaxMin() {
		System.out.println("Insert the number of values on the array.");

		System.out.println("Then Insert the values themselves: ");
		Scanner in = new Scanner (System.in);
		int n, max, min;
		n = in.nextInt();
		
		int[] values = new int[n];
		values[0] = in.nextInt();
		min = values[0];
		max = values[0];
		for (int i = 1; i < n; i++) {
			values[i] = in.nextInt();
			if (max < values[i]) {
				max = values[i];
			} else if (min > values[i]) {
				min = values[i];
			}
		}
		
		System.out.println("Min Value: " + min);
		System.out.println("Max Value: " + max);
		
	}


}
