package src.blablacar;


import aima.basic.XYLocation;
import java.util.ArrayList;
import java.util.LinkedList;
import java.lang.Math;
import java.util.Random;
import java.util.set;



public class BlaBlaEstado {

	public BlaBlaEstado(ArrayList<Integer> dist, ArrayList<LinkedList<XYLocation>> coches) {

		distancias = new ArrayList<Integer> (dist);
		trayectos = new ArrayList<LinkedList<XYLocation>> (coches);

	}

	//Caso en que no sea posible llegar???
	public BlaBlaEstado(ArrayList<Integer> coches, ArrayList<ArrayList<XYLocation>> trabajadores) {

		int personas = trabajadores.size();

		distancias = new ArrayList<Integer> (coches.size());
		trayectos = new ArrayList<LinkedList<XYLocation>> (personas);

		int q = 0;

		for (LinkedList l : trayectos) {

			l = new LinkedList<XYLocation> ();

			l.add(trabajadores.get(coches.get(q)).get(0));

		}


		ArrayList<Boolean> vb = new ArrayList<Boolean> (personas);
		Collections.fill(vb, Boolean.FALSE);

		int eq = ceil(personas / coches.size());

		int max_iteraciones = 100;

		int i = 0;

		boolean sol_valida = false;

		Random rand = new Random();

		//Set para no poner conductores en otros coches
		Set<Integer> s = new HashSet<Integer>();

		for (int cond : coches) s.add(cond);

		int no_trabajo = trabajadores.size();

		while (!sol_valida && i < max_iteraciones) {

			for (int k = 0; k < coches.size(); ++k) {

				int cond = coches.get(k);
				vb.get(cond) = true;

				//Personas dejadas en el trabajo
				int j = 0;

				//Pasajeros que van actualmente con el conductor
				LinkedList<Integer> pas = new LinkedList<Integer>();

				int dist_rec = 0;

				while (j < eq && no_trabajo > 0) {

					int rnd = rand.nextInt(2);

					boolean recoger = (pas.size() == 1 && rnd == 1) || pas.size() == 0;

					if (recoger) {

						int trbjd = rand.nextInt(personas);

						while (!vb.get(rnd) || s.contains(rnd)) trbjd = rand.nextInt(personas);

						vb.set(trbjd, true);

						XYLocation ir = trabajadores.get(trbjd).get(0);

						dist_rec += dist(ir, trayectos.get(cond).getLast());

						trayectos.get(cond).add(ir);

						pas.add(trbjd);
					}

					else {

						int dejar = rand.nextInt(pas.size());
						XYLocation ir = trabajadores.get(dejar).get(1);
						dist_rec += dist(ir, trayectos.get(cond).getLast());

						trayectos.get(cond).add(ir);
						++j;
						pas.remove(dejar);
						--no_trabajo;
					}

				}

				distancias.set(k, dist_rec);

				if (dist_rec > 30000) break;

				sol_valida = k + 1 == coches.size() && dist_rec <= 30000;


			}

			++i;
		}

	}	

	public ArrayList<LinkedList<XYLocation>> consultar_trayecto() {

		return trayectos;

	}


	public ArrayList<Integer> consultar_distancias() {

		return distancias;

	}

	public LinkedList<XYLocation> consultar_trayecto_coche(int coche) {

		return trayectos.get(coche);

	}

	public int consultar_distancia(int coche) {

		return distancias.get(coche);

	}

	private ArrayList<LinkedList<XYLocation>> trayectos;
	private ArrayList<Integer> distancias;

	private int dist(XYLocation a, XYLocation b) {

		int dist_X = a.getXCoOrdinates() - b.getXCoOrdinates();

		dist_X = dist_X < 0 ? -dist_X : dist_X;


		int dist_Y = a.getYCoOrdinates() - b.getYCoOrdinates();

		dist_Y = dist_Y < 0 ? -dist_Y : dist_Y;

		return dist_X + dist_Y;
	}

	public void escribir_trayecto() {

		for (int i = 0; i < coches.size(); ++i) {

			System.out.printl("El coche " + i + " ha seguido este trayecto ");

			for (XYLocation x : trayectos.get(i)) System.out.print(x.toString() + ", ");

		}


	}

}

