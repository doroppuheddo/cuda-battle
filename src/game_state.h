#ifndef GAME_STATE_H
#define GAME_STATE_H

class GameState {
public:
    GameState() = default;
    GameState(const GameState&) = default;
    GameState(GameState&&) = default;
    GameState& operator=(const GameState&) = default;
    GameState& operator=(GameState&&) = default;
    ~GameState() = default;

    void init();
    bool isGameOver();
    void displayBoard();
    void playTurn();
    void displayResults();
    void gpuAttack(int player);

private:
    int currentPlayer;

    int threads;
    int blocks;
    int* grid;
    int* attackCoords;
    int* gpu1Grid;
    int* gpu2Grid;
};

#endif  // GAME_STATE_H
