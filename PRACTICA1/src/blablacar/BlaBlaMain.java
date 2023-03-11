package src.blablacar;

import src.blablacar.BlaBlaEstado;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Set;
import IA.Comparticion.*;

import java.util.HashSet;
import aima.basic.XYLocation;


public class BlaBlaMain {


	public static void main (String[] args) {

		
		Scanner s = new Scanner(System.in);

		System.out.print("Introduce la Semilla: ");
		int seed = s.nextInt();


		System.out.print("Introduce el numero de conductores: ");
		int conductores = s.nextInt();


		System.out.print("Introduce el numero de usuarios: ");
		int usuarios = s.nextInt();

		System.out.println("Que solucion inicial quieres usar?");
		System.out.println("Modo 0: Greedy");
		System.out.println("Modo 1: Random");

		int modo = s.nextInt();

		Usuarios users = new Usuarios(usuarios, conductores, seed);

		BlaBlaEstado e = new BlaBlaEstado(users, modo);

		e.escribir_distancias();

		//Ahora magia
	}

}

