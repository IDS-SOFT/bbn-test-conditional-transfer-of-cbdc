// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract ConditionalCBDCTransfer {
    IERC20 public cbdcToken; // The CBDC token contract

    event CheckBalance(uint amount);

    // constructor(address _cbdcToken) {
    //     cbdcToken = IERC20(_cbdcToken);
    // }

    // Function to transfer CBDC tokens conditionally
    function transferCBDC(address _to, uint256 _amount, bool _conditionMet) external {
        require(_to != address(0), "Invalid recipient address");
        require(_amount > 0, "Amount must be greater than 0");

        // Check the condition
        require(_conditionMet, "Condition not met");

        // Perform the transfer
        require(cbdcToken.transferFrom(msg.sender, _to, _amount), "Transfer failed");
    }
    
    function getBalance(address user_account) external returns (uint){
       uint user_bal = user_account.balance;
       emit CheckBalance(user_bal );
       return (user_bal);

    }
}
