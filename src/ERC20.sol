// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "openzeppelin/token/ERC20/ERC20.sol";
import "openzeppelin/token/ERC20/extensions/ERC20Burnable.sol";
import "openzeppelin/access/Ownable.sol";
contract MyToken is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("FoundryToken", "FTK") {
        _mint(msg.sender, 1000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}