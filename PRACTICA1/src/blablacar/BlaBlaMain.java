package src.blablacar;

import src.blablacar.NewBlaBlaEstado;
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

/*
		for (int i = 0; i < 100; ++i) {
			Usuarios u = new Usuarios(5000, 3000, i*373);
			System.out.println("Solución número: " + Integer.toString(i));
			System.out.println("--------------------------------------");
			for (Usuario us: u) {
				System.out.println("(" + Integer.toString(us.getCoordOrigenX())  + "," + Integer.toString(us.getCoordOrigenY()) + ")" + "(" + Integer.toString(us.getCoordDestinoX())  + "," + Integer.toString(us.getCoordDestinoY()) + ")"  );
			}
			
		}  
*/
		NewBlaBlaEstado e = new NewBlaBlaEstado(users, modo);

		e.escribir_ruta();

		//Ahora magia
	}

}

