// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BaseEscrowPayment {
    address public buyer;
    address public seller;
    address public escrowAgent;
    uint256 public amount;
    bool public fundsReleased;

    event FundsDeposited(address indexed from, uint256 amount);
    event FundsReleased(address indexed to, uint256 amount);
    event FundsRefunded(address indexed to, uint256 amount);

    modifier onlyEscrowAgent() {
        require(msg.sender == escrowAgent, "Only the escrow agent can perform this action");
        _;
    }

    modifier onlyBuyer() {
        require(msg.sender == buyer, "Only the buyer can perform this action");
        _;
    }

    constructor(address _seller, address _escrowAgent) {
        buyer = msg.sender;
        seller = _seller;
        escrowAgent = _escrowAgent;
        fundsReleased = false;
    }

    function deposit() external payable onlyBuyer {
        require(amount == 0, "Escrow already funded");
        amount = msg.value;
        emit FundsDeposited(msg.sender, msg.value);
    }

    function releaseFunds() external onlyEscrowAgent {
        require(!fundsReleased, "Funds already released");
        require(amount > 0, "No funds to release");
        payable(seller).transfer(amount);
        fundsReleased = true;
        emit FundsReleased(seller, amount);
    }

    function refund() external onlyEscrowAgent {
        require(!fundsReleased, "Funds already released");
        require(amount > 0, "No funds to refund");
        payable(buyer).transfer(amount);
        emit FundsRefunded(buyer, amount);
    }
}
