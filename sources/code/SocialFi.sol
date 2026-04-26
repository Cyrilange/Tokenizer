// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

// SocialFi.sol
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

//contract made with erc20 protocole

contract SocialFi42 is ERC20, Ownable, ERC20Permit { 	//constructor is called one time
    constructor(address initialOwner)
        ERC20("SocialFi42", "SCF")
        Ownable(initialOwner)
        ERC20Permit("SocialFi42")
    {}

    function mint(address to, uint256 amount) public onlyOwner {			//function mint
        _mint(to, amount);
    }

	function decimals() public pure override returns (uint8) {
    return 18;
}
}