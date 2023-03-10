package src.blablacar;


import java.util.ArrayList;
import java.lang.Math;
import aima.XYLocation;




public class BlaBlaEstado {



	//Modo 0 -> Greedy
	//Modo 1 -> Random
	public BlaBlaEstado (Usuarios users, int modo) {		

		int n = users.size();

		num_cond = 0;

		ArrayList<Usuario> conductores = new ArrayList<Usuario>();
		Set<Usuario> pasajeros = new HashSet<Usuario>();

		for (int i = 0; i < n; ++i) {

			if (users.get(i).isConductor()) {

				++num_cond;

				conductores.add(users.get(i));

			}

			else pasajeros.add(users.get(i));

		}

		distancias = new ArrayList<Integer> (num_cond);
		trayectos = new ArrayList<ArrayList<XYLocation>> (num_cond);

		for (int i = 0; i < num_cond; ++i) {

			distancias.add(0);

			ArrayList<XYLocation> v = new ArrayList<XYLocation> ();
			XYLocation ini = new XYLocation(conductores.get(i).getCoordOrigenX(), conductores.get(i).getCoordOrigenY());
			v.add(ini);
			trayectos.add(v);

		}

		if (modo == 0) greedy_sol(users, conductores, pasajeros);
		else random_sol(users, conductores, pasajeros);

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
				int x_act = pos_act.getCoOrdinateX();
				int y_act = pos_act.getCoOrdinateY();


				//Eleccion de recoger o dejar
				Usuario posible_pasajero;

				if (recoger(pasajeros_actuales, cond_act, posible_pasajero, pasajeros)) {

					int x = posible_pasajero.getCoordOrigenX();
					int y = posible_pasajero.getCoordOrigenY();

					XYLocation nuevo = new XYLocation(x,y);

					trayecto_cond.add(nuevo);

					int distancia_actual = distancias.get(i) + dist(x,y,x_act, y_act);

					distancias.set(i, distancia_actual);


				}


				else {

					Usuario u1 = pasajeros_actuales.get(0);
					Usuario u2 = pasajeros_actuales.get(1);

					int dejar = dist(u1.getCoordDestinoX(), u1.getCoordDestinoY(), x_act, y_act) < dist(u2.getCoordDestinoX(), u2.getCoordDestinoY(), x_act, y_act) ? 0 : 1;

					XYLocation dejar = new XYLocation(pasajeros_actuales.get(dejar).getCoordDestinoX(), pasajeros_actuales.get(dejar).getCoordDestinoY());

					trayecto_cond.add(dejar);

					int distancia_actual = distancias.get(i) + dist(dejar.getCoOrdinateX(), dejar.getCoOrdinateY() ,x_act, y_act);

					distancias.set(i,distancia_actual);
					--num_no_trabajando;
					pasajeros.remove(pasajeros_actuales.get(dejar));

				}


			}


		}


		for (int i = 0; i < num_cond; ++i) {

			Usuario conductor_actual = conductores.get(i);
			trayectos.get(i).add(new XYLocation(conductor_actual.getCoordX(), conductor_actual.getCoordY()));
			XYLocation last_pos = trayectos.get(i).get(trayectos.size() - 2);

			int distancia_actual = distancias.get(i) + dist(conductor_actual.getCoOrdinateX(), conductor_actual.getCoOrdinateY() , last_pos.getCoOrdX(), last_pos.getCoOrdY());

			distancias.set(i,distancia_actual);	
		}

	}

	private static ArrayList<ArrayList<XYLocation>> trayectos;
	private static ArrayList<Integer> distancias;

	private boolean recoger (ArrayList<Usuario> pasajeros_en_coche, Usuario conductor, Usuario pasajero_recoger, Set<Usuario> pasajeros) {

		if (pasajeros_en_coche.size() == 2) return false;

		pasajero_recoger = cercano(pasajeos, conductor);

		return true;

	}

	private int dist(int x1, int y1, int x2, int y2) {

		return Math.abs(x1 - x2) + Math.abs(y1 - y2);
	}

	private Usuario cercano (Set<Usuario> s, Usuario u) {

		int min = 10e9;

		Usuario x;

		for (Usuario pasj : s) {

			int nueva_dist = dist(u.getCoordOrigenX(), u.getCoordOrigenY(), pasj.getCoordOrigenX(), pasj.getCoordOrigenY());

			if (nueva_dist < min) x = pasj;

		}

		return x;
	}




	private int num_cond;

	public int num_conductores() {

		return num_conductores;

	}

	public int num_pasajeros() {

		return trabajadores.size() - num_cond;

	}


}
