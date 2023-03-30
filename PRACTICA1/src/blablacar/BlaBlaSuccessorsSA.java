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

        int rand_num = rand.nextInt(3);
        
        
        //Permutation
        if (rand_num == 0) {
            int idCar = rand.nextInt(nCars);
            int routeLength = actState.getRouteLength(idCar);

            int id1 = rand.nextInt(routeLength - 3) + 1;
            int id2 = rand.nextInt(routeLength - 2) + 1;
            
            while (id2 <= id1) {
                id2 = rand.nextInt(routeLength - 2) + 1;
            }

            BlaBlaEstado nextState = new BlaBlaEstado(actState);

            if(nextState.route_permutation(idCar, id1, id2)) {
                String action = "Se permutan las posiciones " + id1 + " y " + id2 + " del trayecto número: " + idCar;
                Successor new_succ = new Successor(action, nextState);
                succ.add(new_succ);
            }

           else rand_num = 1; 
        }

        if (rand_num == 1) {
            int idCar = rand.nextInt(nCars);
            int idCar2 = rand.nextInt(nCars);
            
            while (idCar2 < idCar) {
                idCar2 = rand.nextInt(nCars);
            }

            int routeLength = actState.getRouteLength(idCar);
            int routeLength2 = actState.getRouteLength(idCar2);

            

            int id1 = rand.nextInt(routeLength - 2) + 1;
            int id2 = rand.nextInt(routeLength2 - 2) + 1;

            //BlaBlaHeuristicFunctions huristicTest = new BlaBlaHeuristicFunctions();
            BlaBlaEstado nextState = new BlaBlaEstado(actState);

            //System.out.println("Calidad antigua: " + huristicTest.getHeuristicValue(actState));
            //System.out.println("Calidad nueva: " + huristicTest.getHeuristicValue(nextState));

            
            while(!nextState.passenjer_swap(idCar, idCar2, id1, id2)) {
                idCar = rand.nextInt(nCars);
                idCar2 = rand.nextInt(nCars);
            
                while (idCar2 < idCar) {
                    idCar2 = rand.nextInt(nCars);
                }

                routeLength = actState.getRouteLength(idCar);
                routeLength2 = actState.getRouteLength(idCar2);

                id1 = rand.nextInt(routeLength - 2) + 1;
                id2 = rand.nextInt(routeLength2 - 2) + 1;
            }
            
            String action = "Se intercambia la persona en posición " + id1 + " del coche " + idCar + " con la persona en posición " + id2 + " del coche " + idCar2;
            Successor new_succ = new Successor(action, nextState);
            succ.add(new_succ);
        }

        else {
            int idCar = rand.nextInt(nCars);
            int idCarDest = rand.nextInt(nCars);

            while (idCar == idCarDest) {
                idCarDest = rand.nextInt(nCars);
            }

            int routeLength = actState.getRouteLength(idCar);
            int id1 = rand.nextInt(routeLength - 2) + 1;

            BlaBlaEstado nextState = new BlaBlaEstado(actState);
            while(!nextState.changeCar(idCar, id1, idCarDest)) {
                idCar = rand.nextInt(nCars);
                idCarDest = rand.nextInt(nCars);

                while (idCar == idCarDest) {
                    idCarDest = rand.nextInt(nCars);
                }

                routeLength = actState.getRouteLength(idCar);
                id1 = rand.nextInt(routeLength - 2) + 1;
            }

            String action = "Se mueve la persona en posición " + id1 + " del coche " + idCar + " al coche " + idCarDest;
            Successor new_succ = new Successor(action, nextState);
            succ.add(new_succ);
        }
        
        /* BlaBlaEstado nuevoEstado = (BlaBlaEstado) succ.get(0).getState();
        if(!nuevoEstado.checkDistances()) {
           System.out.println(succ.get(0).getAction());
        }*/
        
        return succ;
    }

}