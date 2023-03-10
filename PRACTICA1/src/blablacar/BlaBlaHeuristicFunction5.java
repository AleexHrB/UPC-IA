package src.blablacar;

import java.util.*;
import aima.search.framework.HeuristicFunction;
import aima.basic.XYLocation;

/**
 * @author Walter J.T.V
 */
public class BlaBlaHeuristicFunction5 implements HeuristicFunction{

    /**
     * @param state This is a non-instanciated state 
     * @return The sum of the squared remaining distance to work, divided by the number of users. Arithmetic average
     */
    public double getHeuristicValue(ArrayList<ArrayList<XYLocation>> state){
        //all of this need to be updated whenever fucking alex decides to trabajar
        ArrayList<src.aima.basic.XYLocation> CurrentLocations = state.get(0); 
        ArrayList<src.aima.basic.XYLocation> WorkLocations = state.get(1);
        int NumberOfCars = 137;
        int n = CurrentLocations.size();

        double h = 0.0;
        for(int i = 0; i < n; ++i){  
            double distance = ManhattanDistance(CurrentLocations.get(i), WorkLocations.get(i));
            h = h + distance;
        }
    
        return h/(double)n;

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




