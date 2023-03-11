package src.blablacar;

import java.util.*;
import aima.search.framework.HeuristicFunction;
import src.BlaBlaEstado;

import java.lang.IllegalStateException;
/**
 * @author Walter J.T.V
 */
public class BlaBlaHeuristicFunctions implements HeuristicFunction{

    
    /**
     * @param state This is a non-instanciated state 
     * @param Choice This number determines which heuristic is gonna be used, from heuristic1 to heuristic 8. Throws exception
     * @throws IllegalStateException if the number provided is not between 1-8 then this exception is thrown
     * @return Depending on the function chosen, the value returned will be 
     *    O(1) 1. Total Number of cars  
     *    O(1) 2. Total Number of cars squared
     *    O(n) 3. Sum of the length of the paths to work for each user 
     *    O(n) 4. Sum of the length of the paths to work for each user squared
     *    O(n) 5. Average of the length of the path to work for each user
     *    O(n) 6. Average of the length of the path to work for each user (each element squared)
     *    O(n) 7. Entropy of the length of path to work from each user
     *    O(n) 8. Entropy of the length of path to work from each user multiplied by the number of cars
     */
    public double getHeuristicValue(Object State,int Choice) throws IllegalStateException{

        src.blablacar.BlaBlaEstado estado = (BlaBlaEstado) State;
        double NumberOfCars = estado.num_conductores();
        ArrayList<Integer> PathLengths = estado.distancias_coches();
        int n = PathLengths.size();
        double h = 0;

        switch (Choice) {
            case 1:

                h = NumberOfCars;
                break;
            case 2:

                h = NumberOfCars*NumberOfCars;
                break;
            case 3:

                for(int i = 0; i < n; ++i) h += PathLengths(i);   
                break; 
            case 4:

                for(int i = 0; i < n; ++i) h += PathLengths(i) * PathLengths(i);
                break;

            case 5:

                for(int i = 0; i < n; ++i) h += PathLengths(i);
                h = h / (double)n;
                break;
            
            case 6:

                for(int i = 0; i < n; ++i) h += PathLengths(i) * PathLengths(i);
                h = h / (double)n;
                break;

            case 7: 

                for(int i = 0; i < n; ++i) h += PathLengths(i);
                 h = h * Math.log(h);

            case 8:
                for(int i = 0; i < n; ++i) h += PathLengths(i);
                h = h * Math.log(h) * NumberOfCars;

            default:
                throw new IllegalStateException("maricones usad el numero entre 1 y 8 joder");
                break;

        }

        return h;
    }

    /**
     * 
     * @param pointA First location
     * @param pointB Second location
     * @return The Manhattan distance between those 2 locations defined as D(i,j) = |ix - jx| + |iy - jy|
     */
    private double ManhattanDistance(src.aima.basic.XYLocation pointA, src.aima.basic.XYLocation pointB){
        return Math.abs(pointA.getXCoOrdinate() - pointB.getXCoOrdinate()) + Math.abs(pointA.getYCoOrdinate() - pointB.getYCoOrdinate());
    }
}

 
