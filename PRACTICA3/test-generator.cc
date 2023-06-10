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
        return - 1;
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
            if (tareas[i] == 2 && ext != 0) {
                ofs << "(es_tipo_dos tarea" << i << ")" << std::endl;
                ofs << "(es_tipo_dos tarea" << i + nTareas/2 << ")" << std::endl;
            }
            else if (tareas[i] == 3) {
                ofs << "(es_tipo_tres tarea" << i << ")" << std::endl;
                ofs << "(es_tipo_tres tarea" << i + nTareas/2 << ")" << std::endl;
            }
            if (ext != 0) {
                    ofs << "(es_tarea_asignada tarea" << i + nTareas/2  << " tarea" << i << ")" << std::endl;
                    ofs << "(es_tarea_adicional tarea" << i + nTareas/2 << ")" << std::endl;
            }
            if (ext >= 2) {
                ofs << "(= (hora-tarea tarea" << i << ")" << rand() % 102 + 1 << ")" << std::endl;
                ofs << "(= (hora-tarea tarea" << i + nTareas/2 << ")" << 0 << ")" << std::endl;
            }
        }

        //Assignamos es_calidad_dos
        if (ext >= 3) {
            for (int i = 0; i < nProgramadores; ++i) {
                if (rand() % 3 == 0) {
                    ofs << "(es_calidad_dos programador" << i << ")" << std::endl;
                }
                if (ext >= 2) {
                    ofs << "(= (tareas-ass programador" << i << ") 0)" << std::endl;
                }
            }

        }
   
        if (ext >= 2) {
            ofs << "(= (total-horas) 0)" << std::endl;
        }

        if (ext == 4) {
            ofs << "(= (ponderacion-horas) 100)" << std::endl;
            ofs << "(= (ponderacion-personas) 20)" << std::endl;
            ofs << "(= (personas-currando) 0)" << std::endl;
        }

        ofs << std::endl << ")" << std::endl << std::endl;

        ofs << "(:goal (forall (?t - tarea) (asignada ?t)))" << std::endl;
        
        if (ext >= 2 and ext < 4) ofs << std::endl << "(:metric minimize (total-horas))" << std::endl;
        else if (ext == 4) ofs << std::endl << "(:metric minimize (+ (* (ponderacion-horas) (total-horas)) (* (ponderacion-personas) (personas-currando))))" << std::endl;
        
        ofs << ")" << std::endl;
        ofs.close();  
    }
    
}