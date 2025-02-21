Overview

This Solidity smart contract implements a simple number guessing game with an automated prize distribution system. Players can guess a secret number, and if they guess correctly, they receive a reward.

Features

A secret number is set based on the sender's address.

Players can guess a number between 1 and 100.

If the guess is correct, the player is rewarded with 1 ether.

Players can withdraw their rewards after winning.

Deployed Address

This contract is deployed on the Edu Chain at:
0x0138A495dEAa0935aEA386342D6539E1FF1fACB7

Functions

setSecretNumber()

Sets a secret number using a pseudo-random mechanism.

Can only be set once until a correct guess resets it.

guessNumber(uint256 _guess)

Allows a player to guess a number between 1 and 100.

If the guess is correct, the player is rewarded with 1 ether, and the secret number resets.

withdrawRewards()

Allows players to withdraw their accumulated rewards.

Ensures only players with rewards can withdraw.

How to Use

Deploy the smart contract on an Ethereum-compatible blockchain.

Call setSecretNumber() to initialize the game.

Players can guess using guessNumber(_guess).

If they win, they can withdraw their rewards using withdrawRewards().

Notes

This contract does not include a secure random number generator. The secret number is derived from the sender’s address.

Ensure the contract has enough ether to distribute rewards.

Disclaimer

This is a simple educational smart contract and should not be used for real-money transactions without proper security audits.# number-guessing-game
