#include<iostream>
#include<vector>
#include <fstream>
#include <sstream>
#include <time.h>

int main() {
    std::cout << "Que extension quieres probar?" << std::endl;
    int ext;
    std::cin >> ext;

    if (ext < 0 or ext > 4) {
        std::cout << "Introduce un número del 0 al 4" << std::endl;
    }

    
    std::string extName;
    if (ext == 0) {
        extName = "base";
    }
    else {
        std::ostringstream name;
        name << "ext" << ext;
        extName = name.str();
    }

    std::cout << "Inserta el numero de juegos de prueba a construir " << std::endl;
    int n;
    std::cin >> n;
    srand(time(NULL));

    for (int i = 0; i < n; ++i) {
        std::ofstream ofs;

        //Creamos documentos
        std::ostringstream oss;
        oss << "./tests/" << extName << "/test-" << i << ".pddl";
        std::string path = oss.str();
        ofs.open(path, std::ofstream::out | std::ofstream::trunc);

        //Definimos cabecera
        ofs << "(define (problem " << extName << ") (:domain " << extName << ")" << std::endl;
        ofs << "(:objects" << std::endl;
        
        //Definimos objetos
        int nTareas = rand() % 15 + 1;
        nTareas *= 2; //Hacemos el numero de tareas par
        int nProgramadores = rand() % 15 + 1;

        for (int i = 0; i < nTareas; ++i) {
            ofs << "tarea" << i << " - " << "tarea" << std::endl;
        }

        int tareas[nTareas/2];
        for (int i = 0; i < nTareas/2; ++i) {
            tareas[i] = rand() % 3 + 1; 
        }

        ofs << std::endl;

        for (int i = 0; i < nProgramadores; ++i) {
            int cal = rand() % 3;
            std::string type;

            switch (cal)
            {
                case 0:
                    type = "programador_uno";
                    break;

                case 1:
                    type = "programador_dos";
                    break;

                case 2:
                    type = "programador_tres";
                    break;

                default:
                    break;
            } 

            std::ostringstream task;
            task << "programador" << i;
            ofs << task.str() << " - " << type << std::endl;
        }

        ofs << std::endl << ")" << std::endl << std::endl;
    
        //Definimos init

        
        ofs << "(:init" << std::endl;

        //Definimos predicados es_tipo_tres
        for (int i = 0; i < nTareas/2; ++i) {
            if (tareas[i] == 2) {
                ofs << "(es_tipo_dos tarea" << i << ")" << std::endl;
                ofs << "(es_tipo_dos tarea" << i + nTareas/2 << ")" << std::endl;
            }
            else if (tareas[i] == 3) {
                ofs << "(es_tipo_tres tarea" << i << ")" << std::endl;
                ofs << "(es_tipo_tres tarea" << i + nTareas/2 << ")" << std::endl;
            }
        }

        ofs << std::endl;

        //Definimos predicados es_tarea_asignada
        if (ext != 0) {

            ofs << std::endl;
        }
        
        ofs << std::endl << ")" << std::endl << std::endl;

        ofs << "(:goal (forall (?t - tarea) (asignada ?t))))" << std::endl;
        
        std::string predicates[] = {"es_tipo_tres", "es_tarea_asignada", "es_calidad_dos"};
        
        
        
        
        int nPreds = 3;
        if (ext == 0) nPreds = 1;
        else if (ext == 1) nPreds = 2;

        
        ofs.close();  
    }
    
}