//package src.blablacar; DONA ERROR I NO SE PERQUE PUTU JAVA

import java.util.*;
import aima.search.framework.HeuristicFunction;
/**
 * @author Walter J.T.V
 */
public class BlaBlaHeuristicFunction implements HeuristicFunction{

    
    /**
     * @param state This is a non-instanciated state 
     * @return Total number of cars
     */
    public double getHeuristicValue(int state,int Choice){

        switch (Choice) {
            case 1:
            
                double numberofcars = state; //this needs to be updated
                return numberofcars;
                break;
            case 2:

                double numberofcars = state; //this needs to be updated
                return numberofcars * numberofcars;
            case 3:

            default:
                break;
        }
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

 
