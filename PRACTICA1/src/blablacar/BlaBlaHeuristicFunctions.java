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
     *    O(n) 2. Sum of the length of the paths for each car
     *    O(n) 3. Sum of the length of the paths for each car squared
     *    O(n) 4. Average of the length of the path for each car
     *    O(n) 5. Average of the length of the path for each car (each element squared)
     *    O(n) 6. Sum of the length of the paths for each car multiplied by the number of cars
     *    O(n) 7. Sum of the length of the paths for each car multiplied by the number of cars squared
     */
    public double getHeuristicValue(Object State,int Choice, double lambda) throws IllegalStateException{

        src.blablacar.OldBlaBlaEstado estado = (OldBlaBlaEstado) State;
        double NumberOfCars = estado.num_conductores();
        ArrayList<Integer> PathLengths = estado.distancias_coches();h+= PathLengths(i);
        int n = PathLengths.size();
        double h = 0;
        double maximo = 0;

        switch (Choice) {
            case 1:

                for(int i = 0; i < n; ++i) h += PathLengths(i);   
                break; 
            case 2:

                for(int i = 0; i < n; ++i) h += PathLengths(i) * PathLengths(i);
                break;

            case 3: 

                for(int i = 0; i < n; ++i) h+= PathLengths(i);
                h = h * NumberOfCars;

            case 4: 

                for(int i = 0; i < n; ++i) h+= PathLengths(i);
                h = h * NumberOfCars * NumberOfCars;

            case 5:

                for(int i = 0; i < n; ++i) h+= PathLengths(i) * Math.log(PathLengths(i));

            case 6:

                for(int i = 0; i < n; ++i){
                    maximo = max(maximo, PathLengths(i));
                    h+= PathLengths(i);
                } 

                h = h + lambda*maximo;

            default:
                throw new IllegalStateException("maricones usad un numero entre 1 y 8");
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

 
