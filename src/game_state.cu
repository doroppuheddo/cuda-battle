#include "game_state.h"
#include "kernel.h"

void GameState::init() {
    // TODO
}

bool GameState::isGameOver() {
    // TODO
    return false;
}

void GameState::displayBoard() {
    // TODO
}

void GameState::displayResults() {
    // TODO
}

void GameState::playTurn() {
    if (currentPlayer == 1) {
        gpuAttack(1);
        currentPlayer = 2;
    } else {
        gpuAttack(2);
        currentPlayer = 1;
    }
}

void GameState::gpuAttack(int player) {
    // Launch appropriate GPU kernel for the current player
    if (player == 1) {
        attackStrategyKernel<<<blocks, threads>>>(gpu1Grid, attackCoords);
    } else {
        attackStrategyKernel<<<blocks, threads>>>(gpu2Grid, attackCoords);
    }
    cudaDeviceSynchronize();
    // Update game state based on attack results
}
