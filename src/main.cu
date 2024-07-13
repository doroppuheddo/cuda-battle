#include <iostream>
#include <vector>

#include "cuda_runtime.h"
#include "game_state.h"

int main() {
    // Initialize game state
    GameState gameState;
    gameState.init();

    // Main game loop
    while (!gameState.isGameOver()) {
        gameState.displayBoard();
        gameState.playTurn();
    }

    gameState.displayResults();
    return 0;
}
