package src.blablacar;


import java.util.ArrayList;
import java.lang.Math;
import java.util.Random;

import IA.Comparticion.*;




public class NewBlaBlaEstado {

	private static ArrayList<ArrayList<Integer>> trayectos;
	private static ArrayList<Integer> id_cond;
	private static ArrayList<Integer> distancias;
	private static Usuarios cjt_usuarios;
	private int num_cond;


	public NewBlaBlaEstado(Usuarios users, int modo) {

		cjt_usuarios = users;

		ArrayList<Integer> id_conductores = new ArrayList<Integer> ();
		ArrayList<Integer> id_pasajeros = new ArrayList<Integer> ();

		num_cond = 0;

		distancias = new ArrayList<Integer> ();
		trayectos = new ArrayList<ArrayList<Integer>> ();

		id_cond = id_conductores;


		for (int i = 0; i < users.size(); ++i) {

			if (users.get(i).isConductor()) {

				id_conductores.add(i+1);
				distancias.add(0);
				trayectos.add(new ArrayList<Integer>());
				trayectos.get(num_cond).add(i+1);
				++num_cond;

			}

			else id_pasajeros.add(i+1);

		}


		random_sol(id_conductores, id_pasajeros);


	}

	private void random_sol(ArrayList<Integer> id_conductores, ArrayList<Integer> id_pasajeros) {


		boolean solucion_valida = false;

		int max_dist = 30000;


		while (!solucion_valida) {

			ArrayList<ArrayList<Integer>> pasajeros = new ArrayList<ArrayList<Integer>> ();

			for (int i = 0; i < distancias.size(); ++i) {

				distancias.set(i,0);
				trayectos.get(i).clear();
				trayectos.get(i).add(id_conductores.get(i));

				pasajeros.add(new ArrayList<Integer>());

			}

			int num_no_pillados = id_pasajeros.size();

			Random r = new Random();

			ArrayList<Boolean> vb = new ArrayList<Boolean> (id_pasajeros.size());

			for (int i = 0; i < id_pasajeros.size(); ++i) vb.add(false);


			while (num_no_pillados > 0) {

				for (int i = 0; i < id_conductores.size() && distancias.get(i) <= max_dist && num_no_pillados > 0; ++i) {

					int aux = trayectos.get(i).size();
					int id_1 = trayectos.get(i).get(aux-1);

					int psj_1 = pasajeros.get(i).size() == 0 ? 0 : pasajeros.get(i).get(0);
					int psj_2 = pasajeros.get(i).size() <= 1 ? 0 : pasajeros.get(i).get(1);

					int x_act = id_1 > 0 ? cjt_usuarios.get(id_1 - 1).getCoordOrigenX() : cjt_usuarios.get(-(id_1 + 1)).getCoordDestinoX();
					int y_act = id_1 > 0 ? cjt_usuarios.get(id_1 - 1).getCoordOrigenY() : cjt_usuarios.get(-(id_1 + 1)).getCoordDestinoY();

					int num_pasajeros = pasajeros.get(i).size();


					boolean recoger = num_pasajeros == 0 || (num_pasajeros == 1 && r.nextInt(2) == 0);


					if (recoger) {

						--num_no_pillados;
						int num_recoger = r.nextInt(id_pasajeros.size());

						while (vb.get(num_recoger)) num_recoger = r.nextInt(id_pasajeros.size());

						vb.set(num_recoger, true);

						pasajeros.get(i).add(id_pasajeros.get(num_recoger));

						int x_dest = cjt_usuarios.get(id_pasajeros.get(num_recoger)-1).getCoordOrigenX();
						int y_dest = cjt_usuarios.get(id_pasajeros.get(num_recoger)-1).getCoordOrigenY();

						distancias.set(i, distancias.get(i) + Math.abs(x_act - x_dest) + Math.abs(y_act - y_dest));

						trayectos.get(i).add(id_pasajeros.get(num_recoger));


					}

					else {

						int xd = r.nextInt(pasajeros.get(i).size());
						int id_dejar = pasajeros.get(i).get(xd);

						int x_dest = cjt_usuarios.get(id_dejar-1).getCoordDestinoX();
						int y_dest = cjt_usuarios.get(id_dejar-1).getCoordDestinoY();

						pasajeros.get(i).remove(xd);

						distancias.set(i, distancias.get(i) + Math.abs(x_act - x_dest) + Math.abs(y_act - y_dest));

						trayectos.get(i).add(-id_dejar);

						

					}


				}

			}

			
			
			for (int i = 0; i < distancias.size(); ++i) {

				//Hay que arreglar esto aun
				int psj_1 = pasajeros.get(i).size() == 0 ? 0 : pasajeros.get(i).get(0);
				int psj_2 = pasajeros.get(i).size() <= 1 ? 0 : pasajeros.get(i).get(1);


				Usuario conductor = cjt_usuarios.get(id_conductores.get(i)-1);
				int x_f = conductor.getCoordDestinoX();
				int y_f = conductor.getCoordDestinoY();

				int id_u = trayectos.get(i).get(trayectos.get(i).size() - 1);
				int x_a = cjt_usuarios.get(-(id_u + 1)).getCoordDestinoX();
				int y_a = cjt_usuarios.get(-(id_u + 1)).getCoordDestinoY();

				distancias.set(i, distancias.get(i) + Math.abs(x_f - x_a) + Math.abs(y_f - y_a));

				trayectos.get(i).add(-id_conductores.get(i));

				if (distancias.get(i) > max_dist) {
					solucion_valida = false;
					break;
				}

				else solucion_valida = true;

			}

			

		}

	}

	public void escribir_ruta() {


		for (int i = 0; i < distancias.size(); ++i) {

			System.out.println("El coche " + id_cond.get(i) + " ha recorrido " + distancias.get(i) + " y ha hecho esto: ");

			for (Integer x : trayectos.get(i)) System.out.print(x + " , ");
			System.out.println("");

		}

	}

}













