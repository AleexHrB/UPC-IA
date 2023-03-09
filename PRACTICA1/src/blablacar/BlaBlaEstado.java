import src.aima.basic.XYLocation;
import java.util.ArrayList;
import java.util.LinkedList;
import java.lang.Math;



public class BlaBlaEstado {

	public BlaBlaEstado(ArrayList<Integer> dist, ArrayList<LinkedList<XYLocation>> coches) {

		distancias = new ArrayList<Integer> (dist);
		trayectos = new ArrayList<LinkedList<XYLocation>> (coches);

	}

	public BlaBlaEstado(ArrayList<ArrayList<XYLocation>> coches, ArrayList<ArrayList<XYLocation>> trabajadores) {
		
		distancias = new ArrayList<Integer> (coches.size());

		for (Integer n : distancias) n = 0;

		trayectos = new ArrayList<LinkedList<XYLocation>> (coches.size());

		for (LinkedList<XYLocation> l : trayectos) l = new LinkedList<XYLocation> ();


		boolean valid_solution = false;

		while (!valid_solution) {

			for (int i = 0; i < coches.size(); ++i) {

				XYLocation recoger = new XYLocation(1000000, 1000000);

				for (int j = 0; j < trabajadores.size(); ++i) {
					if (dist(recoger, coches.get(i).get(0)) > dist(coches.get(i).get(0), recoger))
				}
			}
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
}
