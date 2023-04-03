package src.blablacar;

import src.blablacar.BlaBlaEstado;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Set;
import IA.Comparticion.*;

import java.util.HashSet;
import aima.basic.XYLocation;
import aima.search.framework.HeuristicFunction;
import aima.search.framework.Problem;
import aima.search.framework.Search;
import aima.search.framework.SearchAgent;
import aima.search.informed.HillClimbingSearch;
import aima.search.informed.SimulatedAnnealingSearch;


public class BlaBlaMain {


	public static void main (String[] args) {
		Integer seeds[] = {10323, 72718 ,110901, 31416, 151002,100902,201201,20902,51353612,487912};
		

		//TEST1
		/*System.out.println("MOVER FINAL");
		for (int i = 0; i < 10; ++i) test1(seeds[i], 0);
		System.out.println("MOVER PRINCIPIO");
		for (int i = 0; i < 10; ++i) test1(seeds[i], 1);*/

		//TEST2
		/*System.out.println("GREEDY");
		for (int i = 0; i < 10; ++i) test2(seeds[i] + 1, 0);
		System.out.println("RANDOM");
		for (int i = 0; i < 10; ++i) {
			double meanDist = 0.0;
			double meanTime = 0.0;
			for (int j = 0; j < 5; ++j) {
				double[] result = test2(seeds[i] + 1, 1);
				meanDist += result[0];
				meanTime += result[1];
			}
			meanDist = meanDist/5;
			meanTime = meanTime/5;
			System.out.println("-----------------------");
			System.out.println("Seed: " + (seeds[i] + 1));
			System.out.println("Media de distancias de 5 ejecuciones: " + meanDist);
			System.out.println("Media de Tiempo de 5 ejecuciones: " + meanTime);
			System.out.println("-----------------------");
		}*/
		
		//TEST3
		/*System.out.println("Uno");
		for (int i = 0; i < 10; ++i) test3(seeds[i]*2, 1);
		System.out.println("Dos");
		for (int i = 0; i < 10; ++i) test3(seeds[i]*2, 2);
		System.out.println("Sien");
		for (int i = 0; i < 10; ++i) test3(seeds[i]*2, 100);*/

		//TEST4
		/*System.out.println("Suma distancias");
		for (int i = 0; i < 10; ++i) test4(seeds[i]/2, 1);
		System.out.println("Entropia");
		for (int i = 0; i < 10; ++i) test4(seeds[i]/2, 5);
		System.out.println("Lambda = 1");
		for (int i = 0; i < 10; ++i) test4(seeds[i]/2, 6);*/

		//PUNTO EXTRA
		//OgMain();

		//TEST 5
		//Integer steps[] = {5000, 10000, 50000, 75000, 100000, 150000, 200000};
		/*for (int i = 0; i < 10; ++i) {
			for (int j = 0; j < 7; ++j) {
				System.out.println("Semilla actual: " + (seeds[i]*3 + 123));
				System.out.println("Steps actuales: " + (steps[j]));
				double distanceSA = 0;
				double timeSA = 0;

				for (int k = 0; k < 3; ++k) {
					double[] res = test5Steps((seeds[i]*3 + 123), steps[j]);
					distanceSA += res[0];
					timeSA += res[1];
				}

				distanceSA = distanceSA/3;
				timeSA = timeSA/3;

				System.out.println("Media de distancias SA: " + distanceSA);
				System.out.println("Media de tiempo SA: " + timeSA);
				System.out.println("------------------------");
			}

			double[] resHC = test5HC((seeds[i]*3 + 123));
			double distanceHC = resHC[0];
			double timeHC = resHC[1];

			System.out.println("Semilla actual: " + (seeds[i]*3 + 123));
			System.out.println("Distancias HC: " + distanceHC);
			System.out.println("Ejecutando HILL CLIMBING");
			System.out.println("Tiempo HC: " + timeHC);
			System.out.println("------------------------");
		}*/

		/*Integer K[] = {1, 5, 25, 125};
		Double lambd[] = {1.0, 0.01, 0.0001};
		for (int i = 0; i < 10; ++i) {
			for (int j = 0; j < 3; ++j) {
				for (int k = 0; k < 4; ++k) {
					System.out.println("Semilla actual: " + ((seeds[i] + 123)/3));
					System.out.println("K actual: " + (K[k]));
					System.out.println("Lambda actual: " + (lambd[j]));
					double distanceSA = 0;
					double timeSA = 0;
					
					for (int l = 0; l < 3; ++l) {
						double[] res = test5KLamb1((seeds[i] + 123)/3, K[k], lambd[j]);
						distanceSA += res[0];
						timeSA += res[1];
					}

					distanceSA = distanceSA/3;
					timeSA = timeSA/3;

					System.out.println("Media de distancias SA: " + distanceSA);
					System.out.println("Media de tiempo SA: " + timeSA);
					System.out.println("------------------------");

				}
				

				
				
			}
		}*/

		/*Integer K[] = {15, 20, 25, 30};
		Double lambd[] = {0.001, 0.0001, 0.00001};
		for (int i = 0; i < 10; ++i) {
			for (int j = 0; j < 3; ++j) {
				for (int k = 0; k < 4; ++k) {
					System.out.println("Semilla actual: " + ((seeds[i] + 123)/3));
					System.out.println("K actual: " + (K[k]));
					System.out.println("Lambda actual: " + (lambd[j]));
					double distanceSA = 0;
					double timeSA = 0;
					
					for (int l = 0; l < 3; ++l) {
						double[] res = test5KLamb1((seeds[i] + 123)/3, K[k], lambd[j]);
						distanceSA += res[0];
						timeSA += res[1];
					}

					distanceSA = distanceSA/3;
					timeSA = timeSA/3;

					System.out.println("Media de distancias SA: " + distanceSA);
					System.out.println("Media de tiempo SA: " + timeSA);
					System.out.println("------------------------");

				}
				

				
				
			}
		}*/

		//Integer stiter[] = {50, 75, 100, 150, 200, 250, 300, 500, 750, 1000, 1250, 1500};
		/*for (int i = 0; i < 10; ++i) {
			for (int j = 0; j < 12; ++j) {
				System.out.println("Semilla actual: " + ((seeds[i]*5)/7));
				System.out.println("Stiter actual: " + (stiter[j]));
				double distanceSA = 0;
				double timeSA = 0;
				for (int k = 0; k < 3; ++k) {
					
					
					double[] res = test5Stiter((seeds[i]*5)/7, stiter[j]);
					distanceSA += res[0];
					timeSA += res[1];
				}

				distanceSA = distanceSA/3;
				timeSA = timeSA/3;

				System.out.println("Media de distancias SA: " + distanceSA);
				System.out.println("Media de tiempo SA: " + timeSA);
				System.out.println("------------------------");
			}	
		}*/



	/*Integer steps[] = {300000, 500000, 1000000, 2000000};
	for (int i = 0; i < 10; ++i) {
		for (int j = 0; j < 4; ++j) {
			System.out.println("Semilla actual: " + ((246000 + seeds[i])/13));
			System.out.println("Steps actuales: " + (steps[j]));
			double distanceSA = 0;
			double timeSA = 0;

			for (int k = 0; k < 3; ++k) {
				double[] res = test5Steps(((246000 + seeds[i])/13), steps[j], 200, 15, 0.00001);
				distanceSA += res[0];
				timeSA += res[1];
			}

			distanceSA = distanceSA/3;
			timeSA = timeSA/3;

			System.out.println("Media de distancias SA: " + distanceSA);
			System.out.println("Media de tiempo SA: " + timeSA);
			System.out.println("------------------------");
		}

		/*double[] resHC = test5HC((246000 + seeds[i])/13);
		double distanceHC = resHC[0];
		double timeHC = resHC[1];

		System.out.println("Semilla actual: " + ((246000 + seeds[i])/13));
		System.out.println("Distancias HC: " + distanceHC);
		System.out.println("Ejecutando HILL CLIMBING");
		System.out.println("Tiempo HC: " + timeHC);
		System.out.println("------------------------");
	}*/

	//Test 6
	/*int users_ini = 200;
	for (int i = 5; i < 10; ++i) {
		System.out.println("PERSONAS: " + (users_ini + 100*i));
		for (int j = 8; j < 10; ++j) {
			double[] resHC = test6NUsers((seeds[j]*37)/17, users_ini + 100*i);
			double distanceHC = resHC[0];
			double timeHC = resHC[1];

			System.out.println("Semilla: " + (seeds[j]*37)/17);
			System.out.println("Tiempo de ejecución: " + timeHC);
			System.out.println("Distancia total: " + distanceHC);
			System.out.println("----------------------	");
		}
	}*/

	//Test 7
	
	/*for (int i = 0; i < 10; ++i) {
		System.out.println("Semilla: " + seeds[i]*13);

		System.out.println("Suma distancias: ");
		System.out.println("******************");
		double[] resSumaDist = test7Heuristicas2(seeds[i]*13, 1);
		System.out.println("Tiempo de ejecución: " + resSumaDist[1]);
		System.out.println("Distancia total: " + resSumaDist[0]);
		System.out.println("Número de coches: " + resSumaDist[2]);

		System.out.println("Suma distancias x Numero de coches: ");
		System.out.println("******************");
		double[] resSumaCoches = test7Heuristicas2(seeds[i]*13, 3);
		System.out.println("Tiempo de ejecución: " + resSumaCoches[1]);
		System.out.println("Distancia total: " + resSumaCoches[0]);
		System.out.println("Número de coches: " + resSumaCoches[2]);

		System.out.println("Suma distancias x Numero de coches x Numero de coches: ");
		System.out.println("******************");
		double[] resSumaCochesCuadrado = test7Heuristicas2(seeds[i]*13, 4);
		System.out.println("Tiempo de ejecución: " + resSumaCochesCuadrado[1]);
		System.out.println("Distancia total: " + resSumaCochesCuadrado[0]);
		System.out.println("Número de coches: " + resSumaCochesCuadrado[2]);

		System.out.println("----------------------");
	}*/

	//TEST 8
	/*for (int i = 0; i < 10; ++i) {
		System.out.println("Semilla: " + seeds[i]*13);

		System.out.println("Suma distancias: ");
		System.out.println("******************");
		double[] resSumaDist = test8Heuristicas3(seeds[i]*13, 1, 300000, 200, 15, 0.00001);
		System.out.println("Tiempo de ejecución: " + resSumaDist[1]);
		System.out.println("Distancia total: " + resSumaDist[0]);
		System.out.println("Número de coches: " + resSumaDist[2]);

		System.out.println("Suma distancias x Numero de coches: ");
		System.out.println("******************");
		double[] resSumaCoches = test8Heuristicas3(seeds[i]*13, 3, 300000, 200, 15, 0.00001);
		System.out.println("Tiempo de ejecución: " + resSumaCoches[1]);
		System.out.println("Distancia total: " + resSumaCoches[0]);
		System.out.println("Número de coches: " + resSumaCoches[2]);

		System.out.println("Suma distancias x Numero de coches x Numero de coches: ");
		System.out.println("******************");
		double[] resSumaCochesCuadrado = test8Heuristicas3(seeds[i]*13, 4, 300000, 200, 15, 0.00001);
		System.out.println("Tiempo de ejecución: " + resSumaCochesCuadrado[1]);
		System.out.println("Distancia total: " + resSumaCochesCuadrado[0]);
		System.out.println("Número de coches: " + resSumaCochesCuadrado[2]);

		System.out.println("----------------------");
	}*/

	//TEST 9 
	int users_ini = 200;
	for (int i = 0; i < 10; ++i) {
		System.out.println("PERSONAS: " + (users_ini + 50*i));
		for (int j = 0; j < 10; ++j) {
			double[] resHC = test9NUsers((seeds[j]*73)/23, users_ini + 50*i, 300000, 200, 15, 0.00001);
			double distanceSA = resHC[0];
			double timeSA = resHC[1];
			double carsSA = resHC[2];

			System.out.println("Semilla: " + (seeds[j]*73)/23);
			System.out.println("Tiempo de ejecución: " + timeSA);
			System.out.println("Distancia total: " + distanceSA);
			System.out.println("Número de coches: " + carsSA);
			System.out.println("----------------------	");
		}
	}

	//TEST 9_2
	/*int users_ini = 200;
	for (int i = 0; i < 10; ++i) {
		System.out.println("PERSONAS: " + (users_ini + 50*i));
		for (int j = 0; j < 10; ++j) {
			double[] resHC = test9NUsers2((seeds[j]*73)/23, users_ini + 50*i, 300000, 200, 15, 0.00001);
			double distanceSA = resHC[0];
			double timeSA = resHC[1];
			double carsSA = resHC[2];

			System.out.println("Semilla: " + (seeds[j]*73)/23);
			System.out.println("Tiempo de ejecución: " + timeSA);
			System.out.println("Distancia total: " + distanceSA);
			System.out.println("Número de coches: " + carsSA);
			System.out.println("----------------------	");
		}
	}*/
}
		

	private static void test1(int seed, int OperatorMode) {
		Scanner s = new Scanner(System.in);
		

		
		int conductores = 100;
		int usuarios = 200;
		int modo = 0;
		//Usamos solución random

		Usuarios users = new Usuarios(usuarios, conductores, seed);

		BlaBlaEstado estadoInicial = new BlaBlaEstado(users, modo);
		System.out.println("Seed: " + seed);
		
		BlaBlaHeuristicFunctions heu = new BlaBlaHeuristicFunctions();
		heu.ChangeHeuristicFunction(1);
		double suma_distancias_og = heu.getHeuristicValue(estadoInicial);
	
		BlaBlaSuccessors HillClimb = new BlaBlaSuccessors();
		Search alg = new HillClimbingSearch();
		Problem p = new Problem(estadoInicial, HillClimb, new BlaBlaGoalTest(), heu);
		double start = 0;
		double finish = 0;

		HillClimb.change_mode(OperatorMode);
		try {
			start = System.currentTimeMillis();
			SearchAgent ag = new SearchAgent(p, alg);
			finish = System.currentTimeMillis();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		
		BlaBlaEstado goal = (BlaBlaEstado) alg.getGoalState();
		double suma_distancias_def = heu.getHeuristicValue(goal);

		System.out.println("Suma de distancias inicial: " + suma_distancias_og);
		System.out.println("Numero de cars inicial: " + estadoInicial.getNumCars());
		System.out.println("Suma de distancias final: " + suma_distancias_def);
		System.out.println("Numero de cars final: " + goal.getNumCars());
		System.out.println("Tiempo de escalado de monte: " + (finish - start));
		System.out.println("------------------------------------");
		//Ahora magia
	}

	private static double[] test2(int seed, int solution) {
		Scanner s = new Scanner(System.in);
		

		
		int conductores = 100;
		int usuarios = 200;
		//Usamos solución random

		Usuarios users = new Usuarios(usuarios, conductores, seed);

		BlaBlaEstado estadoInicial = new BlaBlaEstado(users, solution);
		
		BlaBlaHeuristicFunctions heu = new BlaBlaHeuristicFunctions();
		heu.ChangeHeuristicFunction(1);
		double suma_distancias_og = heu.getHeuristicValue(estadoInicial);
	
		BlaBlaSuccessors HillClimb = new BlaBlaSuccessors();
		Search alg = new HillClimbingSearch();
		Problem p = new Problem(estadoInicial, HillClimb, new BlaBlaGoalTest(), heu);
		double start = 0;
		double finish = 0;

		HillClimb.change_mode(0);
		try {
			start = System.currentTimeMillis();
			SearchAgent ag = new SearchAgent(p, alg);
			finish = System.currentTimeMillis();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		
		BlaBlaEstado goal = (BlaBlaEstado) alg.getGoalState();
		double suma_distancias_def = heu.getHeuristicValue(goal);

		double time = finish - start;
		double[] retVal = {suma_distancias_def, time};
		return retVal;
		//Ahora magia
	}

	private static void test3(int seed, double lambda) {
		Scanner s = new Scanner(System.in);

		int conductores = 100;
		int usuarios = 200;
		//Usamos solución random

		Usuarios users = new Usuarios(usuarios, conductores, seed);

		BlaBlaEstado estadoInicial = new BlaBlaEstado(users, 0);
		
		BlaBlaHeuristicFunctions heu = new BlaBlaHeuristicFunctions();
		heu.ChangeHeuristicFunction(1);
		double suma_distancias_og = heu.getHeuristicValue(estadoInicial);
	
		BlaBlaSuccessors HillClimb = new BlaBlaSuccessors();
		Search alg = new HillClimbingSearch();
		Problem p = new Problem(estadoInicial, HillClimb, new BlaBlaGoalTest(), heu);
		double start = 0;
		double finish = 0;

		HillClimb.change_mode(0);
		heu.ChangeExperimentalLambda(lambda);
		heu.ChangeHeuristicFunction(6);
		try {
			start = System.currentTimeMillis();
			SearchAgent ag = new SearchAgent(p, alg);
			finish = System.currentTimeMillis();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		
		BlaBlaEstado goal = (BlaBlaEstado) alg.getGoalState();
		double heuristico = heu.getHeuristicValue(goal);
		heu.ChangeHeuristicFunction(1);
		double suma_distancias_def = heu.getHeuristicValue(goal);

		double time = finish - start;
		System.out.println("Semilla: " + seed);
		System.out.println("Heuristico: " + heuristico);
		System.out.println("Suma de distancias final: " + suma_distancias_def);
		System.out.println("Número de conductores: " + goal.getNumCars());
		System.out.println("Tiempo: " + time);
		System.out.println("------------------------------------");
		//Ahora magia
	}

	private static void test4(int seed, int heuristic) {
		Scanner s = new Scanner(System.in);

		int conductores = 100;
		int usuarios = 200;
		//Usamos solución random

		Usuarios users = new Usuarios(usuarios, conductores, seed);

		BlaBlaEstado estadoInicial = new BlaBlaEstado(users, 0);
		
		BlaBlaHeuristicFunctions heu = new BlaBlaHeuristicFunctions();
		heu.ChangeHeuristicFunction(1);
		double suma_distancias_og = heu.getHeuristicValue(estadoInicial);
	
		BlaBlaSuccessors HillClimb = new BlaBlaSuccessors();
		Search alg = new HillClimbingSearch();
		Problem p = new Problem(estadoInicial, HillClimb, new BlaBlaGoalTest(), heu);
		double start = 0;
		double finish = 0;

		HillClimb.change_mode(0);
		heu.ChangeHeuristicFunction(heuristic);
		if (heuristic == 6) {
			heu.ChangeExperimentalLambda(1);
		}
		try {
			start = System.currentTimeMillis();
			SearchAgent ag = new SearchAgent(p, alg);
			finish = System.currentTimeMillis();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		
		BlaBlaEstado goal = (BlaBlaEstado) alg.getGoalState();
		double heuristico = heu.getHeuristicValue(goal);
		heu.ChangeHeuristicFunction(1);
		double suma_distancias_def = heu.getHeuristicValue(goal);

		double time = finish - start;
		System.out.println("Semilla: " + seed);
		System.out.println("Heuristico: " + heuristico);
		System.out.println("Suma de distancias final: " + suma_distancias_def);
		System.out.println("Tiempo: " + time);
		System.out.println("------------------------------------");
		//Ahora magia
	}

	private static double[] test5Steps(int seed, int steps, int stiter, int k, double lambda) {	
		int conductores = 100;
		int usuarios = 200;
		int modo = 0;

		Usuarios users = new Usuarios(usuarios, conductores, seed);

		BlaBlaEstado estadoInicial = new BlaBlaEstado(users, modo);

		BlaBlaHeuristicFunctions heu = new BlaBlaHeuristicFunctions();
		heu.ChangeHeuristicFunction(1);
	
		BlaBlaSuccessorsSA SA = new BlaBlaSuccessorsSA();
		Search alg = new SimulatedAnnealingSearch(steps, stiter, k, lambda);
		Problem p = new Problem(estadoInicial, SA, new BlaBlaGoalTest(), heu);
		double start = 0;
		double finish = 0;

		heu.ChangeHeuristicFunction(1);
		try {
			start = System.currentTimeMillis();
			SearchAgent ag = new SearchAgent(p, alg);
			finish = System.currentTimeMillis();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		
		BlaBlaEstado goal = (BlaBlaEstado) alg.getGoalState();
		goal.checkDistances();
		heu.ChangeHeuristicFunction(1);
		double suma_distancias_def = heu.getHeuristicValue(goal);

		//Ahora magia

		double time = finish - start;
		double[] retVal = {suma_distancias_def, time};
		return retVal;
	}

	private static double[] test5KLamb(int seed, int k, double lambda) {	
		int conductores = 100;
		int usuarios = 200;
		int modo = 0;
		int steps = 75000;

		Usuarios users = new Usuarios(usuarios, conductores, seed);

		BlaBlaEstado estadoInicial = new BlaBlaEstado(users, modo);

		BlaBlaHeuristicFunctions heu = new BlaBlaHeuristicFunctions();
		heu.ChangeHeuristicFunction(1);
	
		BlaBlaSuccessorsSA SA = new BlaBlaSuccessorsSA();
		Search alg = new SimulatedAnnealingSearch(steps, 100, k, lambda);
		Problem p = new Problem(estadoInicial, SA, new BlaBlaGoalTest(), heu);
		double start = 0;
		double finish = 0;

		heu.ChangeHeuristicFunction(1);
		try {
			start = System.currentTimeMillis();
			SearchAgent ag = new SearchAgent(p, alg);
			finish = System.currentTimeMillis();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		
		BlaBlaEstado goal = (BlaBlaEstado) alg.getGoalState();
		goal.checkDistances();
		heu.ChangeHeuristicFunction(1);
		double suma_distancias_def = heu.getHeuristicValue(goal);

		//Ahora magia

		double time = finish - start;
		double[] retVal = {suma_distancias_def, time};
		return retVal;
	}

	private static double[] test5Stiter(int seed, int stiter) {	
		int conductores = 100;
		int usuarios = 200;
		int modo = 0;
		int steps = 75000;
		int k = 15;
		double lambda = 0.00001;

		Usuarios users = new Usuarios(usuarios, conductores, seed);

		BlaBlaEstado estadoInicial = new BlaBlaEstado(users, modo);

		BlaBlaHeuristicFunctions heu = new BlaBlaHeuristicFunctions();
		heu.ChangeHeuristicFunction(1);
	
		BlaBlaSuccessorsSA SA = new BlaBlaSuccessorsSA();
		Search alg = new SimulatedAnnealingSearch(steps, stiter, k, lambda);
		Problem p = new Problem(estadoInicial, SA, new BlaBlaGoalTest(), heu);
		double start = 0;
		double finish = 0;

		heu.ChangeHeuristicFunction(1);
		try {
			start = System.currentTimeMillis();
			SearchAgent ag = new SearchAgent(p, alg);
			finish = System.currentTimeMillis();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		
		BlaBlaEstado goal = (BlaBlaEstado) alg.getGoalState();
		goal.checkDistances();
		heu.ChangeHeuristicFunction(1);
		double suma_distancias_def = heu.getHeuristicValue(goal);

		//Ahora magia

		double time = finish - start;
		double[] retVal = {suma_distancias_def, time};
		return retVal;
	}

	private static double[] test5HC(int seed) {
		int conductores = 100;
		int usuarios = 200;
		int modo = 0;

		Usuarios users = new Usuarios(usuarios, conductores, seed);

		BlaBlaEstado estadoInicial = new BlaBlaEstado(users, modo);

		BlaBlaHeuristicFunctions heu = new BlaBlaHeuristicFunctions();
		heu.ChangeHeuristicFunction(1);
	
		BlaBlaSuccessors HC = new BlaBlaSuccessors();
		Search alg = new HillClimbingSearch();
		Problem p = new Problem(estadoInicial, HC, new BlaBlaGoalTest(), heu);
		double start = 0;
		double finish = 0;

		HC.change_mode(0);
		heu.ChangeHeuristicFunction(1);
		try {
			start = System.currentTimeMillis();
			SearchAgent ag = new SearchAgent(p, alg);
			finish = System.currentTimeMillis();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		
		BlaBlaEstado goal = (BlaBlaEstado) alg.getGoalState();
		goal.checkDistances();
		heu.ChangeHeuristicFunction(1);
		double suma_distancias_def = heu.getHeuristicValue(goal);

		//Ahora magia

		double time = finish - start;
		double[] retVal = {suma_distancias_def, time};
		return retVal;
	}

	private static double[] test6NUsers(int seed, int usuarios) {
		int conductores = usuarios/2;
		int modo = 0;

		Usuarios users = new Usuarios(usuarios, conductores, seed);

		BlaBlaEstado estadoInicial = new BlaBlaEstado(users, modo);

		BlaBlaHeuristicFunctions heu = new BlaBlaHeuristicFunctions();
		heu.ChangeHeuristicFunction(1);
	
		BlaBlaSuccessors HC = new BlaBlaSuccessors();
		Search alg = new HillClimbingSearch();
		Problem p = new Problem(estadoInicial, HC, new BlaBlaGoalTest(), heu);
		double start = 0;
		double finish = 0;

		HC.change_mode(0);
		heu.ChangeHeuristicFunction(1);
		try {
			start = System.currentTimeMillis();
			SearchAgent ag = new SearchAgent(p, alg);
			finish = System.currentTimeMillis();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		
		BlaBlaEstado goal = (BlaBlaEstado) alg.getGoalState();
		goal.checkDistances();
		heu.ChangeHeuristicFunction(1);
		double suma_distancias_def = heu.getHeuristicValue(goal);

		//Ahora magia

		double time = finish - start;
		double[] retVal = {suma_distancias_def, time};
		return retVal;
	}

	private static double[] test7Heuristicas2(int seed, int mode) {
		int conductores = 100;
		int usuarios = 200;
		int modo = 0;

		Usuarios users = new Usuarios(usuarios, conductores, seed);

		BlaBlaEstado estadoInicial = new BlaBlaEstado(users, modo);

		BlaBlaHeuristicFunctions heu = new BlaBlaHeuristicFunctions();
		heu.ChangeHeuristicFunction(1);
	
		BlaBlaSuccessors HC = new BlaBlaSuccessors();
		Search alg = new HillClimbingSearch();
		Problem p = new Problem(estadoInicial, HC, new BlaBlaGoalTest(), heu);
		double start = 0;
		double finish = 0;

		HC.change_mode(0);
		heu.ChangeHeuristicFunction(mode);
		try {
			start = System.currentTimeMillis();
			SearchAgent ag = new SearchAgent(p, alg);
			finish = System.currentTimeMillis();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		
		BlaBlaEstado goal = (BlaBlaEstado) alg.getGoalState();
		goal.checkDistances();
		heu.ChangeHeuristicFunction(1);
		double suma_distancias_def = heu.getHeuristicValue(goal);

		//Ahora magia

		double time = finish - start;
		double cars = goal.getNumCars();
		double[] retVal = {suma_distancias_def, time, cars};
		return retVal;
	}

	private static double[] test8Heuristicas3(int seed, int mode, int steps, int stiter, int k, double lambda) {
		int conductores = 100;
		int usuarios = 200;
		int modo = 0;



		Usuarios users = new Usuarios(usuarios, conductores, seed);

		BlaBlaEstado estadoInicial = new BlaBlaEstado(users, modo);

		BlaBlaHeuristicFunctions heu = new BlaBlaHeuristicFunctions();
		heu.ChangeHeuristicFunction(1);
	
		BlaBlaSuccessorsSA SA = new BlaBlaSuccessorsSA();
		Search alg = new SimulatedAnnealingSearch(steps, stiter, k, lambda);
		Problem p = new Problem(estadoInicial, SA, new BlaBlaGoalTest(), heu);
		double start = 0;
		double finish = 0;

		heu.ChangeHeuristicFunction(mode);
		try {
			start = System.currentTimeMillis();
			SearchAgent ag = new SearchAgent(p, alg);
			finish = System.currentTimeMillis();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		
		BlaBlaEstado goal = (BlaBlaEstado) alg.getGoalState();
		goal.checkDistances();
		heu.ChangeHeuristicFunction(1);
		double suma_distancias_def = heu.getHeuristicValue(goal);

		//Ahora magia

		double time = finish - start;
		double cars = goal.getNumCars();
		double[] retVal = {suma_distancias_def, time, cars};
		return retVal;
	}

	private static double[] test9NUsers(int seed, int usuarios, int steps, int stiter, int k, double lambda) {
		int conductores = usuarios/2;
		int modo = 0;

		Usuarios users = new Usuarios(usuarios, conductores, seed);

		BlaBlaEstado estadoInicial = new BlaBlaEstado(users, modo);

		BlaBlaHeuristicFunctions heu = new BlaBlaHeuristicFunctions();
		heu.ChangeHeuristicFunction(1);
	
		BlaBlaSuccessorsSA SA = new BlaBlaSuccessorsSA();
		Search alg = new SimulatedAnnealingSearch(steps, stiter, k, lambda);
		Problem p = new Problem(estadoInicial, SA, new BlaBlaGoalTest(), heu);
		double start = 0;
		double finish = 0;

		heu.ChangeHeuristicFunction(4);
		try {
			start = System.currentTimeMillis();
			SearchAgent ag = new SearchAgent(p, alg);
			finish = System.currentTimeMillis();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		
		BlaBlaEstado goal = (BlaBlaEstado) alg.getGoalState();
		goal.checkDistances();
		heu.ChangeHeuristicFunction(1);
		double suma_distancias_def = heu.getHeuristicValue(goal);

		//Ahora magia

		double time = finish - start;
		double cars = goal.getNumCars();
		double[] retVal = {suma_distancias_def, time, cars};
		return retVal;
	}

	private static double[] test9NUsers2(int seed, int usuarios, int steps, int stiter, int k, double lambda) {
		int conductores = usuarios/2;
		int modo = 0;

		Usuarios users = new Usuarios(usuarios, conductores, seed);

		BlaBlaEstado estadoInicial = new BlaBlaEstado(users, modo);
		//estadoInicial.escribir_ruta();
		

		BlaBlaHeuristicFunctions heu = new BlaBlaHeuristicFunctions();
		heu.ChangeHeuristicFunction(1);
	
		BlaBlaSuccessorsSA SA = new BlaBlaSuccessorsSA();
		Search alg = new SimulatedAnnealingSearch(steps, stiter, k, lambda);
		Problem p = new Problem(estadoInicial, SA, new BlaBlaGoalTest(), heu);
		double start = 0;
		double finish = 0;

		heu.ChangeHeuristicFunction(4);
		try {
			start = System.currentTimeMillis();
			SearchAgent ag = new SearchAgent(p, alg);
			finish = System.currentTimeMillis();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		
		BlaBlaEstado goal = (BlaBlaEstado) alg.getGoalState();
		goal.checkDistances();
		//	goal.escribir_ruta();
		heu.ChangeHeuristicFunction(1);
		double suma_distancias_def = heu.getHeuristicValue(goal);

		//Ahora magia

		double time = finish - start;
		double cars = goal.getNumCars();
		double[] retVal = {suma_distancias_def, time, cars};
		return retVal;
	}

	private static void OgMain() {
		Scanner s = new Scanner(System.in);
		Integer seeds[] = {10323, 72718 ,110901, 31416, 151002,100902,201201,20902,51353612,487912};
		
		System.out.print("Introduce la Semilla: ");
		int seed = s.nextInt();


		System.out.print("Introduce el numero de conductores: ");
		
		int conductores = s.nextInt();


		System.out.print("Introduce el numero de usuarios: ");
		int usuarios = s.nextInt();

		int modo = 0;

		Usuarios users = new Usuarios(usuarios, conductores, seed);

		BlaBlaEstado estadoInicial = new BlaBlaEstado(users, modo);

		estadoInicial.escribir_ruta();
		
		BlaBlaHeuristicFunctions heu = new BlaBlaHeuristicFunctions();
		heu.ChangeHeuristicFunction(1);
		double suma_distancias_og = heu.getHeuristicValue(estadoInicial);
	
		BlaBlaSuccessors HillClimb = new BlaBlaSuccessors();
		Search alg = new HillClimbingSearch();
		Problem p = new Problem(estadoInicial, HillClimb, new BlaBlaGoalTest(), heu);
		double start = 0;
		double finish = 0;

		HillClimb.change_mode(0);
		try {
			start = System.currentTimeMillis();
			SearchAgent ag = new SearchAgent(p, alg);
			finish = System.currentTimeMillis();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		
		BlaBlaEstado goal = (BlaBlaEstado) alg.getGoalState();
		System.out.println("NOVA SOLUCIÓ --------------------------------");
		goal.escribir_ruta();
		goal.checkDistances();
		double suma_distancias_def = heu.getHeuristicValue(goal);


		System.out.println("Suma de distancias inicial: " + suma_distancias_og);
		System.out.println("Numero de cars inicial: " + estadoInicial.getNumCars());
		System.out.println("Suma de distancias final: " + suma_distancias_def);
		System.out.println("Numero de cars final: " + goal.getNumCars());
		System.out.println("Tiempo de escalado de monte: " + (finish - start));
		//Ahora magia
	}

	private static void SimulatedAnnealingTest() {
		Scanner s = new Scanner(System.in);
		Integer seeds[] = {10323, 72718 ,110901, 31416, 151002,100902,201201,20902,51353612,487912};
		
		System.out.print("Introduce la Semilla: ");
		int seed = s.nextInt();


		System.out.print("Introduce el numero de conductores: ");
		
		int conductores = s.nextInt();


		System.out.print("Introduce el numero de usuarios: ");
		int usuarios = s.nextInt();

		int modo = 0;

		Usuarios users = new Usuarios(usuarios, conductores, seed);

		BlaBlaEstado estadoInicial = new BlaBlaEstado(users, modo);

		estadoInicial.escribir_ruta();
		estadoInicial.checkDistances();

		BlaBlaHeuristicFunctions heu = new BlaBlaHeuristicFunctions();
		heu.ChangeHeuristicFunction(1);
		double suma_distancias_og = heu.getHeuristicValue(estadoInicial);
	
		BlaBlaSuccessorsSA SA = new BlaBlaSuccessorsSA();
		Search alg = new SimulatedAnnealingSearch(10000, 10, 5, 0.01);
		Problem p = new Problem(estadoInicial, SA, new BlaBlaGoalTest(), heu);
		double start = 0;
		double finish = 0;

		heu.ChangeHeuristicFunction(3);
		try {
			start = System.currentTimeMillis();
			SearchAgent ag = new SearchAgent(p, alg);
			finish = System.currentTimeMillis();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		
		BlaBlaEstado goal = (BlaBlaEstado) alg.getGoalState();
		System.out.println("NOVA SOLUCIÓ --------------------------------");
		goal.escribir_ruta();
		goal.checkDistances();
		heu.ChangeHeuristicFunction(1);
		double suma_distancias_def = heu.getHeuristicValue(goal);


		System.out.println("Suma de distancias inicial: " + suma_distancias_og);
		System.out.println("Numero de cars inicial: " + estadoInicial.getNumCars());
		System.out.println("Suma de distancias final: " + suma_distancias_def);
		System.out.println("Numero de cars final: " + goal.getNumCars());
		System.out.println("Tiempo de escalado de monte: " + (finish - start));
		//Ahora magia
	}
}

