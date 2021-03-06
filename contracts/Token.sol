// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

import "./permit/ERC20Permit.sol";

contract Token is ERC20, Ownable, ERC20Permit {
    constructor() ERC20("Test", "TST") ERC20Permit("Test") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
