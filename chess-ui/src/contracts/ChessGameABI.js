export const abi = [
    {
      "inputs": [
        { "internalType": "address", "name": "_player1", "type": "address" },
        { "internalType": "address", "name": "_player2", "type": "address" }
      ],
      "name": "createGame",
      "outputs": [{ "internalType": "uint256", "name": "", "type": "uint256" }],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        { "internalType": "uint256", "name": "_gameId", "type": "uint256" },
        { "internalType": "address", "name": "_winner", "type": "address" }
      ],
      "name": "endGame",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        { "internalType": "uint256", "name": "_gameId", "type": "uint256" },
        { "internalType": "string", "name": "_moveNotation", "type": "string" }
      ],
      "name": "recordMove",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [{ "internalType": "uint256", "name": "_gameId", "type": "uint256" }],
      "name": "getTotalMoves",
      "outputs": [{ "internalType": "uint256", "name": "", "type": "uint256" }],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        { "internalType": "uint256", "name": "_gameId", "type": "uint256" },
        { "internalType": "uint256", "name": "_moveIndex", "type": "uint256" }
      ],
      "name": "getMove",
      "outputs": [
        { "internalType": "address", "name": "", "type": "address" },
        { "internalType": "string", "name": "", "type": "string" },
        { "internalType": "uint256", "name": "", "type": "uint256" }
      ],
      "stateMutability": "view",
      "type": "function"
    }
  ];
  