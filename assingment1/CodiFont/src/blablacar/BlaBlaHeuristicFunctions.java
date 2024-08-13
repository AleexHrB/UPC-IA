package src.blablacar;

import java.util.*;
import aima.search.framework.HeuristicFunction;
<<<<<<< HEAD:PRACTICA1/src/blablacar/BlaBlaHeuristicFunctions.java
import src.blablacar;
=======
import src.blablacar.BlaBlaEstado;
>>>>>>> c3f0f0b12231b48c31d574f18a38267c40bae553:PRACTICA1/CodiFont/src/blablacar/BlaBlaHeuristicFunctions.java

import java.lang.IllegalStateException;
/**
 * @author Walter J.T.V
 */
public class BlaBlaHeuristicFunctions implements HeuristicFunction{

    
    private double lambda = 1; //susman

    private int Choice = 5; //stallman
    
    /**
     * 
     * @param NewChoice New choice of the heuristic function
     */
    public void ChangeHeuristicFunction(int NewChoice){
    	Choice = NewChoice;
    }

    /**
     * 
     * @param NewLambda The new experimental lambda value for some heuristics
     */
    public void ChangeExperimentalLambda(double NewLambda){
    	lambda = NewLambda;
    }


    /**
     * @param state This is a non-instanciated state 
     * @param Choice This number determines which heuristic is gonna be used, from heuristic1 to heuristic 8. Throws exception
     * @throws IllegalStateException if the number provided is not between 1-8 then this exception is thrown
     * @return Depending on the function chosen, the value returned will be 
     *    O(1) 1. Total Number of cars  
     *    O(n) 2. Sum of the length of the paths for each car
     *    O(n) 3. Sum of the length of the paths for each car squared
     *    O(n) 4. Average of the length of the path for each car
     *    O(n) 5. Average of the length of the path for each car (each element squared)
     *    O(n) 6. Sum of the length of the paths for each car multiplied by the number of cars
     *    O(n) 7. Sum of the length of the paths for each car multiplied by the number of cars squared
     */
    public double getHeuristicValue(Object State) throws IllegalStateException{

        src.blablacar.BlaBlaEstado estado = (BlaBlaEstado) State;
<<<<<<< HEAD:PRACTICA1/src/blablacar/BlaBlaHeuristicFunctions.java
        double NumberOfCars = estado.num_conductores();
        ArrayList<Integer> PathLengths = estado.distancias_coches();
=======
        double NumberOfCars = estado.getNumCars();
        ArrayList<Integer> PathLengths = estado.get_Distances(); 
>>>>>>> c3f0f0b12231b48c31d574f18a38267c40bae553:PRACTICA1/CodiFont/src/blablacar/BlaBlaHeuristicFunctions.java
        int n = PathLengths.size();
        double h = 0;
        double maximo = 0;

        switch (Choice) {
            case 1:

                for(int i = 0; i < n; ++i) h += PathLengths.get(i);   
                break; 
            case 2:
<<<<<<< HEAD:PRACTICA1/src/blablacar/BlaBlaHeuristicFunctions.java

=======
                //DEMASIADO POCHA
>>>>>>> c3f0f0b12231b48c31d574f18a38267c40bae553:PRACTICA1/CodiFont/src/blablacar/BlaBlaHeuristicFunctions.java
                for(int i = 0; i < n; ++i) h += PathLengths.get(i) * PathLengths.get(i);
                break;

            case 3: 

                for(int i = 0; i < n; ++i) h+= PathLengths.get(i);
                h = h * NumberOfCars;
                break;

            case 4: 

                for(int i = 0; i < n; ++i) h+= PathLengths.get(i);
                h = h * NumberOfCars * NumberOfCars;
                break;

            case 5:

                for(int i = 0; i < n; ++i) h+= PathLengths.get(i) * Math.log(PathLengths.get(i));
<<<<<<< HEAD:PRACTICA1/src/blablacar/BlaBlaHeuristicFunctions.java
=======
                break;
>>>>>>> c3f0f0b12231b48c31d574f18a38267c40bae553:PRACTICA1/CodiFont/src/blablacar/BlaBlaHeuristicFunctions.java

            case 6:

                for(int i = 0; i < n; ++i){
<<<<<<< HEAD:PRACTICA1/src/blablacar/BlaBlaHeuristicFunctions.java
                    maximo = Math.max(maximo, PathLengths.get(i));
=======
                    maximo = java.lang.Math.max(maximo, PathLengths.get(i));
>>>>>>> c3f0f0b12231b48c31d574f18a38267c40bae553:PRACTICA1/CodiFont/src/blablacar/BlaBlaHeuristicFunctions.java
                    h+= PathLengths.get(i);
                } 

                h = h + maximo*lambda;
                break;

            default:
<<<<<<< HEAD:PRACTICA1/src/blablacar/BlaBlaHeuristicFunctions.java
                throw new IllegalStateException("andaluses usad un numero entre 1 y 6");
                break;
=======
                throw new IllegalStateException("Usad un numero entre 1 y 6");
>>>>>>> c3f0f0b12231b48c31d574f18a38267c40bae553:PRACTICA1/CodiFont/src/blablacar/BlaBlaHeuristicFunctions.java

        }

        return h;
    }

<<<<<<< HEAD:PRACTICA1/src/blablacar/BlaBlaHeuristicFunctions.java
=======
    /**
     * 
     * @param pointA First location
     * @param pointB Second location
     * @return The Manhattan distance between those 2 locations defined as D(i,j) = |ix - jx| + |iy - jy|
     */
    private double ManhattanDistance(aima.basic.XYLocation pointA, aima.basic.XYLocation pointB){
        return Math.abs(pointA.getXCoOrdinate() - pointB.getXCoOrdinate()) + Math.abs(pointA.getYCoOrdinate() - pointB.getYCoOrdinate());
    }
>>>>>>> c3f0f0b12231b48c31d574f18a38267c40bae553:PRACTICA1/CodiFont/src/blablacar/BlaBlaHeuristicFunctions.java
}

 
