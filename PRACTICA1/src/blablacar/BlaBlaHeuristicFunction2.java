package src.blablacar;

import java.util.*;
import aima.search.framework.HeuristicFunction;
/**
 * @author Walter J.T.V
 */
public class BlaBlaHeuristicFunction2 implements HeuristicFunction{

    /**
     * @param state This is a non-instanciated state
     * @return Total number of cars squared
     */
    public double getHeuristicValue(int state){
        double numberofcars = state; //this needs to be updated
        return numberofcars * numberofcars;
    }
}


