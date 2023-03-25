 
package src.blablacar;

import aima.search.framework.SuccessorFunction;
import aima.search.framework.Successor;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
/**
 *
 * @author Lluc Clavera
 */
public class BlaBlaSuccessors implements SuccessorFunction {
    private int mode;

    @Override
    public List getSuccessors(Object state) {
        ArrayList<Successor> succ = new ArrayList<Successor>();
        BlaBlaEstado actState = (BlaBlaEstado) state;
        int nCars = actState.getNumCars();
       
        switch(mode) {
            case 0:
                    //Permutation
                for (int i = 0; i < nCars; ++i) {
                    int routeLength = actState.getRouteLength(i);
                    for (int j = 1; j < routeLength - 2; ++j) {
                        for (int k = j + 1; k < routeLength - 1; ++k) {
                            BlaBlaEstado nextState = new BlaBlaEstado(actState);
                            if (nextState.route_permutation(i, j, k)) {
                                String action = "Se permutan las posiciones " + i + " y " + j + "del trayecto número: " + k;
                                Successor new_succ = new Successor(action, nextState);
                                succ.add(new_succ);
                            }
                        }
                    }
                
                }


                for(int i = 0; i < nCars; ++i) {
                    for (int j = i; j < nCars; ++j) {
                        int routeLength1 = actState.getRouteLength(i);
                        int routeLength2 = actState.getRouteLength(j);
                        for (int k = 1; k < routeLength1 - 1; ++k) {
                            for (int l = 1; l < routeLength2 - 1; ++l) {
                                BlaBlaEstado nextState = new BlaBlaEstado(actState);

                                //System.out.println("Calidad antigua: " + huristicTest.getHeuristicValue(actState));
                                //System.out.println("Calidad nueva: " + huristicTest.getHeuristicValue(nextState));

                                if (nextState.passenjer_swap(i, j, k, l)) {
                                    String action = "Se intercambia la persona en posición " + k + " del coche " + i + " con la persona en posición " + l + " del coche " + j;
                                    Successor new_succ = new Successor(action, nextState);
                                    succ.add(new_succ);
                                }
                            }
                        }
                    } 
                }

                for (int i = 0; i < nCars; ++i) {
                    int routeLength = actState.getRouteLength(i);
                    for (int j = 1; j < routeLength - 2; ++j) {
                        for (int k = 0; k < nCars; ++ k) {
                            BlaBlaEstado nextState = new BlaBlaEstado(actState);
                            if (nextState.changeCar(i, j, k)) {
                                String action = "usuario con posición " + j + " del coche " + i + "Se va al coche: " + k;
                                Successor new_succ = new Successor(action, nextState);
                                succ.add(new_succ);
                            }
                        }
                    }
                }

                return succ;
            
        case 1:
                //Permutation
            for (int i = 0; i < nCars; ++i) {
                int routeLength = actState.getRouteLength(i);
                for (int j = 1; j < routeLength - 2; ++j) {
                    for (int k = j + 1; k < routeLength - 1; ++k) {
                        BlaBlaEstado nextState = new BlaBlaEstado(actState);
                        if (nextState.route_permutation(i, j, k)) {
                            String action = "Se permutan las posiciones " + i + " y " + j + "del trayecto número: " + k;
                            Successor new_succ = new Successor(action, nextState);
                            succ.add(new_succ);
                        }
                    }
                }
            
            }


            for(int i = 0; i < nCars; ++i) {
                for (int j = i; j < nCars; ++j) {
                    int routeLength1 = actState.getRouteLength(i);
                    int routeLength2 = actState.getRouteLength(j);
                    for (int k = 1; k < routeLength1 - 1; ++k) {
                        for (int l = 1; l < routeLength2 - 1; ++l) {
                            BlaBlaEstado nextState = new BlaBlaEstado(actState);

                            //System.out.println("Calidad antigua: " + huristicTest.getHeuristicValue(actState));
                            //System.out.println("Calidad nueva: " + huristicTest.getHeuristicValue(nextState));

                            if (nextState.passenjer_swap(i, j, k, l)) {
                                String action = "Se intercambia la persona en posición " + k + " del coche " + i + " con la persona en posición " + l + " del coche " + j;
                                Successor new_succ = new Successor(action, nextState);
                                succ.add(new_succ);
                            }
                        }
                    }
                } 
            }

            for (int i = 0; i < nCars; ++i) {
                int routeLength = actState.getRouteLength(i);
                for (int j = 1; j < routeLength - 2; ++j) {
                    for (int k = 0; k < nCars; ++ k) {
                        BlaBlaEstado nextState = new BlaBlaEstado(actState);
                        if (nextState.changeCar2(i, j, k)) {
                            String action = "usuario con posición " + j + " del coche " + i + "Se va al coche: " + k;
                            Successor new_succ = new Successor(action, nextState);
                            succ.add(new_succ);
                        }
                    }
                }
            }

            return succ;
        }
        return null;
    }

}