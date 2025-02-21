// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.26;

contract NumberGuessingGame {
    uint256 private secretNumber;
    address public owner;
    mapping(address => uint256) public rewards;
    
    function setSecretNumber() public {
        require(secretNumber == 0, "Secret number already set");
        secretNumber = uint256(uint160(msg.sender)) % 100 + 1; // Assign a pseudo-random number
    }
    
    function guessNumber(uint256 _guess) public {
        require(secretNumber > 0, "Secret number not set");
        require(_guess > 0 && _guess <= 100, "Guess out of range");
        
        if (_guess == secretNumber) {
            rewards[msg.sender] += 1 ether;
            secretNumber = 0; // Reset after a correct guess
        }
    }
    
    function withdrawRewards() public {
        uint256 amount = rewards[msg.sender];
        require(amount > 0, "No rewards available");
        rewards[msg.sender] = 0;
        payable(msg.sender).transfer(amount);
    }
}
