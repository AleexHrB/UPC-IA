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
    public List getSuccessors(Object state) {
        ArrayList<Successor> succ = new ArrayList<Successor>();

        BlaBlaEstado actState = (BlaBlaEstado) state;

        int nCars = actState.getNumCars();
        Random rand = new Random();

        int rand_num = rand.nextInt(2);

        //Permutation
        if (rand_num == 0) {
            int idCar = rand.nextInt(nCars);
            int routeLength = actState.getRouteLength(idCar);

            int id1 = rand.nextInt(routeLength);
            int id2 = rand.nextInt(routeLength);

            BlaBlaEstado nextState = new BlaBlaEstado(actState);
            nextState.route_permutation(idCar, id1, id2);
            String action = "Se permutan las posiciones " + id1 + " y " + id2 + "del trayecto número: " + idCar;
            Successor new_succ = new Successor(action, nextState);
            succ.add(new_succ);
        }

        return succ;
    }

}