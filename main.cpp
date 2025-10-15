#include <iostream>
#include "funcoes.h"

int main() {
    int opcao = 0;

    do {
        mostrarMenu();
        std::cin >> opcao;
        processarEscolha(opcao);
    } while (opcao != 2);

    return 0;
}
