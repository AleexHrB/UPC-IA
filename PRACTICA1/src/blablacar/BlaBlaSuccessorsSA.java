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
public class BlaBlaSuccessorsSA implements SuccessorFunction {

    @Override
    public List<Successor> getSuccessors(Object state) {
        ArrayList<Successor> succ = new ArrayList<Successor>();

        BlaBlaEstado actState = (BlaBlaEstado) state;

        int nCars = actState.getNumCars();
        Random rand = new Random();

        int rand_num = rand.nextInt(2);

        //Permutation
        if (false) {
            int idCar = rand.nextInt(nCars);
            int routeLength = actState.getRouteLength(idCar);

            int id1 = rand.nextInt(routeLength - 3) + 1;
            int id2 = rand.nextInt(routeLength - 2) + 1;
            while (id2 <= id1) {
                id2 = rand.nextInt(routeLength - 2) + 1;
            }

            BlaBlaEstado nextState = new BlaBlaEstado(actState);
            nextState.route_permutation(idCar, id1, id2);
            String action = "Se permutan las posiciones " + id1 + " y " + id2 + "del trayecto número: " + idCar;
            Successor new_succ = new Successor(action, nextState);
            succ.add(new_succ);
        }

        else if (true) {
            int idCar = rand.nextInt(nCars);
            int idCar2 = rand.nextInt(nCars);
            
            while (idCar2 < idCar) {
                idCar2 = rand.nextInt(nCars);
            }

            int routeLength = actState.getRouteLength(idCar);
            int routeLength2 = actState.getRouteLength(idCar2);

            

            int id1 = rand.nextInt(routeLength - 2) + 1;
            int id2 = rand.nextInt(routeLength2 - 2) + 1;

            BlaBlaHeuristicFunctions huristicTest = new BlaBlaHeuristicFunctions();
            BlaBlaEstado nextState = new BlaBlaEstado(actState);

            //System.out.println("Calidad antigua: " + huristicTest.getHeuristicValue(actState));
            //System.out.println("Calidad nueva: " + huristicTest.getHeuristicValue(nextState));

            nextState.passenjer_swap(idCar, idCar2, id1, id2);
            
            String action = "Se intercambia la persona en posición " + id1 + " del coche " + idCar + " con la persona en posición " + id2 + " del coche " + idCar2;
            Successor new_succ = new Successor(action, nextState);
            succ.add(new_succ);
        }

        return succ;
    }

}