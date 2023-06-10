#include<iostream>
#include<vector>
#include <fstream>
#include <sstream>

int main() {
    std::cout << "Inserta el numero de juegos de prueba a construir " << std::endl;
    int n;
    std::cin >> n;

    for (int i = 0; i < n; ++i) {
        std::ofstream ofs;

        std::ostringstream oss;
        oss << "./tests/test-" << i << ".pddl";
        std::string path = oss.str();

        ofs.open(path, std::ofstream::out | std::ofstream::trunc);
        ofs << "aaa" << std::endl;
        ofs.close();  
    }
    
}