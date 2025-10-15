#include <iostream>
#include "funcoes.h"

void mostrarMenu() {
    std::cout << "=== Menu Principal ===\n";
    std::cout << "1. Dizer Olá\n";
    std::cout << "2. Sair\n";
    std::cout << "Escolha uma opção: ";
}

void processarEscolha(int opcao) {
    if (opcao == 1) {
        std::cout << "Olá, mundo!\n";
    } else if (opcao == 2) {
        std::cout << "Saindo...\n";
    } else {
        std::cout << "Opção inválida!\n";
    }
}
