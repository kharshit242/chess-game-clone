// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ChessGame {
    struct Move {
        address player;
        string moveNotation;
        uint256 timestamp;
    }

    struct Game {
        address player1;
        address player2;
        address winner;
        Move[] moves;
    }

    Game[] public games;

    event GameCreated(uint gameId, address player1, address player2);
    event MoveRecorded(uint gameId, address player, string moveNotation);
    event GameEnded(uint gameId, address winner);

    function createGame(address _player1, address _player2) public returns (uint) {
        Game storage newGame = games.push();
        newGame.player1 = _player1;
        newGame.player2 = _player2;

        emit GameCreated(games.length - 1, _player1, _player2);
        return games.length - 1;
    }

    function recordMove(uint _gameId, string memory _moveNotation) public {
        require(_gameId < games.length, "Game does not exist");
        Game storage game = games[_gameId];
        require(msg.sender == game.player1 || msg.sender == game.player2, "Invalid player");

        game.moves.push(Move({
            player: msg.sender,
            moveNotation: _moveNotation,
            timestamp: block.timestamp
        }));

        emit MoveRecorded(_gameId, msg.sender, _moveNotation);
    }

    function endGame(uint _gameId, address _winner) public {
        require(_gameId < games.length, "Game does not exist");
        Game storage game = games[_gameId];
        game.winner = _winner;
        emit GameEnded(_gameId, _winner);
    }

    function getMove(uint _gameId, uint _moveIndex) public view returns (address, string memory, uint) {
        Game storage game = games[_gameId];
        Move storage move = game.moves[_moveIndex];
        return (move.player, move.moveNotation, move.timestamp);
    }

    function getTotalMoves(uint _gameId) public view returns (uint) {
        return games[_gameId].moves.length;
    }

    function getTotalGames() public view returns (uint) {
        return games.length;
    }
}
