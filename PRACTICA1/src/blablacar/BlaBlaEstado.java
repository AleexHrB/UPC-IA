package src.blablacar;


import java.util.ArrayList;
import java.util.HashSet;
import java.lang.Math;
import aima.basic.XYLocation;
import java.util.Random;
import java.util.Set;

import IA.Comparticion.*;




public class BlaBlaEstado {



	//Modo 0 -> Greedy
	//Modo 1 -> Random
	public BlaBlaEstado (Usuarios users, int modo) {		

		int n = users.size();

		num_cond = 0;

		ArrayList<Usuario> conductores = new ArrayList<Usuario>();
		Set<Usuario> pasajeros = new HashSet<Usuario>();
		ArrayList<Usuario> pasajeros_array = new ArrayList<Usuario>();

		for (int i = 0; i < n; ++i) {

			if (users.get(i).isConductor()) {

				++num_cond;

				conductores.add(users.get(i));

			}

			else {

				if (modo == 0) pasajeros.add(users.get(i));
				else pasajeros_array.add(users.get(i));

			}

		}

		distancias = new ArrayList<Integer> (num_cond);
		trayectos = new ArrayList<ArrayList<XYLocation>> (num_cond);
		pajeros = new ArrayList<ArrayList<Usuario>> (num_cond);

		for (int i = 0; i < num_cond; ++i) {

			distancias.add(0);

			ArrayList<XYLocation> v = new ArrayList<XYLocation> ();
			XYLocation ini = new XYLocation(conductores.get(i).getCoordOrigenX(), conductores.get(i).getCoordOrigenY());
			v.add(ini);
			trayectos.add(v);

			pajeros.get(i).add(conductores.get(i));

		}

		if (modo == 0) greedy_sol(users, conductores, pasajeros);
		else random_sol(users, conductores, pasajeros_array);

	}


	private static ArrayList<ArrayList<XYLocation>> trayectos;
	private static ArrayList<Integer> distancias;
	private static ArrayList<ArrayList<Usuario>> pajeros;

	public ArrayList<ArrayList<Usuario>> pasajeros_cada_coche() {

		return pajeros;

	}


	private void random_sol(Usuarios users, ArrayList<Usuario> conductores, ArrayList<Usuario> pasajeros) {


		int num_no_trabajando = users.size();

		ArrayList<ArrayList<Usuario>> usuarios = new ArrayList<ArrayList<Usuario>> (conductores.size());

		Random r = new Random();

		boolean solucion_valida = false;

		int max_dist = 30000;

		while (!solucion_valida) {

			for (int i = 0; i < distancias.size(); ++i) distancias.set(i, 0);


			while (num_no_trabajando > conductores.size()) {

				ArrayList<Boolean> pasajeros_bool = new ArrayList<Boolean> (pasajeros.size());

				for (int i = 0; i < pasajeros.size(); ++i) pasajeros_bool.set(i, false);

				
				for (int i = 0; i < conductores.size() && distancias.get(i) <= max_dist; ++i) {

					ArrayList<XYLocation> trayecto_conductor = trayectos.get(i);
					XYLocation pos_act = trayecto_conductor.get(trayecto_conductor.size() - 1);
					ArrayList<Usuario> pasajeros_actuales = usuarios.get(i);

					boolean recoger = pasajeros_actuales.size() == 0 || (pasajeros_actuales.size() == 1 && r.nextInt(2) == 0);

					if (recoger) {

						int num_recoger = r.nextInt(pasajeros.size());

						while (pasajeros_bool.get(num_recoger)) num_recoger = r.nextInt(pasajeros.size());

						pasajeros_bool.set(num_recoger, true);

						Usuario nuevo_pasajero = pasajeros.get(num_recoger);
						pajeros.get(i).add(nuevo_pasajero);

						int x = nuevo_pasajero.getCoordOrigenX();
						int y = nuevo_pasajero.getCoordOrigenY();
						trayecto_conductor.add(new XYLocation(x,y));

						int distancia_actual = distancias.get(i) + dist(x,y,pos_act.getXCoOrdinate(), pos_act.getYCoOrdinate());

						distancias.set(i, distancia_actual);

					}


					else {

						int num_dejar = r.nextInt(pasajeros_actuales.size());
						
						Usuario pasajero_dejado = pasajeros.get(num_dejar);

						int x = pasajero_dejado.getCoordDestinoX();
						int y = pasajero_dejado.getCoordDestinoY();

						trayecto_conductor.add(new XYLocation(x,y));
						
						int distancia_actual = distancias.get(i) + dist(x,y,pos_act.getXCoOrdinate(), pos_act.getYCoOrdinate());

						distancias.set(i, distancia_actual);

						--num_no_trabajando;

					}


				}

			}

			for (int i = 0; i < trayectos.size(); ++i) {

				Usuario conductor = conductores.get(i);

				int x = conductor.getCoordDestinoX();
				int y = conductor.getCoordDestinoY();

				trayectos.get(i).add(new XYLocation(x,y));

				XYLocation ultima = trayectos.get(i).get(trayectos.size() - 1);

				int distancia_actual = distancias.get(i) + dist(x,y, ultima.getXCoOrdinate(), ultima.getYCoOrdinate());

				distancias.set(i, distancia_actual);

				if (distancia_actual > max_dist) {

					solucion_valida = false;
					num_no_trabajando = users.size();
					break;

				}

				else solucion_valida = true;

			}

		}

	}






	//Falta actualizar distancias y poner un paron cuando solo queden conductores
	private void greedy_sol(Usuarios users, ArrayList<Usuario> conductores, Set<Usuario> pasajeros) {



		int num_no_trabajando = users.size();

		ArrayList<ArrayList<Usuario>> pasj_coches = new ArrayList<ArrayList<Usuario>> (num_cond);

		for (int i = 0; i < num_cond; ++i) {

			ArrayList<Usuario> u = new ArrayList<Usuario>();

		}

		while (num_no_trabajando > num_cond) {


			for (int i = 0; i < num_cond; ++i) {

				//Referente al conductor actual
				ArrayList<XYLocation> trayecto_cond = trayectos.get(i);
				ArrayList<Usuario> pasajeros_actuales = pasj_coches.get(i);
				Usuario cond_act = conductores.get(i);
				XYLocation pos_act = trayecto_cond.get(trayecto_cond.size() - 1);
				int x_act = pos_act.getXCoOrdinate();
				int y_act = pos_act.getYCoOrdinate();


				//Eleccion de recoger o dejar
				Usuario posible_pasajero = null;

				if (recoger(pasajeros_actuales, cond_act, posible_pasajero, pasajeros)) {

					int x = posible_pasajero.getCoordOrigenX();
					int y = posible_pasajero.getCoordOrigenY();

					XYLocation nuevo = new XYLocation(x,y);
					pajeros.get(i).add(posible_pasajero);

					trayecto_cond.add(nuevo);

					int distancia_actual = distancias.get(i) + dist(x,y,x_act, y_act);

					distancias.set(i, distancia_actual);


				}


				else {

					Usuario u1 = pasajeros_actuales.get(0);
					Usuario u2 = pasajeros_actuales.get(1);

					int dejar = dist(u1.getCoordDestinoX(), u1.getCoordDestinoY(), x_act, y_act) < dist(u2.getCoordDestinoX(), u2.getCoordDestinoY(), x_act, y_act) ? 0 : 1;

					XYLocation dejarPos = new XYLocation(pasajeros_actuales.get(dejar).getCoordDestinoX(), pasajeros_actuales.get(dejar).getCoordDestinoY());

					trayecto_cond.add(dejarPos);

					int distancia_actual = distancias.get(i) + dist(dejarPos.getXCoOrdinate(), dejarPos.getYCoOrdinate() ,x_act, y_act);

					distancias.set(i,distancia_actual);
					--num_no_trabajando;
					pasajeros.remove(pasajeros_actuales.get(dejar));

				}


			}


		}


		for (int i = 0; i < num_cond; ++i) {

			Usuario conductor_actual = conductores.get(i);
			trayectos.get(i).add(new XYLocation(conductor_actual.getCoordDestinoX(), conductor_actual.getCoordDestinoY()));
			XYLocation last_pos = trayectos.get(i).get(trayectos.size() - 2);

			int distancia_actual = distancias.get(i) + dist(conductor_actual.getCoordDestinoX(), conductor_actual.getCoordDestinoY() , last_pos.getXCoOrdinate(), last_pos.getYCoOrdinate());

			distancias.set(i,distancia_actual);	
		}

	}

	private boolean recoger (ArrayList<Usuario> pasajeros_en_coche, Usuario conductor, Usuario pasajero_recoger, Set<Usuario> pasajeros) {

		if (pasajeros_en_coche.size() == 2) return false;

		pasajero_recoger = cercano(pasajeros, conductor);

		return true;

	}

	private int dist(int x1, int y1, int x2, int y2) {

		return Math.abs(x1 - x2) + Math.abs(y1 - y2);
	}

	private Usuario cercano (Set<Usuario> s, Usuario u) {

		int min = 1000000000;

		Usuario x = null;

		for (Usuario pasj : s) {

			int nueva_dist = dist(u.getCoordOrigenX(), u.getCoordOrigenY(), pasj.getCoordOrigenX(), pasj.getCoordOrigenY());

			if (nueva_dist < min) x = pasj;

		}

		return x;
	}




	private int num_cond;

	public int num_conductores() {

		return num_cond;

	}

	public int num_pasajeros() {

		return trayectos.size() - num_cond;

	}


}
