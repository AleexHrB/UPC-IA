package src.blablacar;

import src.blablacar.BlaBlaEstado;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Set;
import java.util.HashSet;
import aima.basic.XYLocation;


public class BlaBlaMain {


	public static void main (String[] args) {

		
		Scanner s = new Scanner(System.in);

		Set<Integer> cond = new HashSet<Integer> ();
		
		System.out.print("Introduzca el numero de personas que hay en la ciudad: ");
		int num_trabajadores = s.nextInt();

		System.out.print("Introduzca el numero de conductores que hay en la ciudad: ");
		int conductores = s.nextInt();

		System.out.println("Introduzca los conductores que van a trabajar (el numero que los identifica");

		ArrayList<Integer> coches = new ArrayList<Integer>(conductores);

		for (int i = 0; i < conductores; ++i) {

			coches.add(s.nextInt());
			cond.add(i);

		}

		System.out.println("Ahora para cada trabajador introduce: Posicion X inicial, Posicion Y inicial, Posicion X final, Posicion Y final");

		ArrayList<ArrayList<XYLocation>> trabajadores = new ArrayList<ArrayList<XYLocation>> (num_trabajadores);


		for (int i = 0; i < num_trabajadores; ++i) {

			String rol = cond.contains(i+1) ? "Conductor " : "Trabajador ";
			System.out.print(rol + (i+1) + " : ");
			ArrayList<XYLocation> v = new ArrayList<XYLocation> (2);

			int x = s.nextInt();
			int y = s.nextInt();

			XYLocation ini = new XYLocation(x,y);

			v.add(ini);

			x = s.nextInt();
			y = s.nextInt();

			XYLocation fin = new XYLocation(x,y);

			v.add(fin);
			trabajadores.add(v);


		}


	}


}
