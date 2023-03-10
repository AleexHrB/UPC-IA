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
    public double getHeuristicValue(int state){
        double numberofcars = state; //this needs to be updated
        return numberofcars;
    }
}

 
