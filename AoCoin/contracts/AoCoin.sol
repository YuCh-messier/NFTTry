pragma solidity ^0.8.13;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract AoCoin is ERC20 {

    mapping (address => bool) public Wallets;
    
    constructor() ERC20("AoCoin", "AO") {
    }

    function setWallet(address _wallet) public{
        Wallets[_wallet]=true;
    }

    function contains(address _wallet) internal view returns (bool){
        return Wallets[_wallet];
    }


    function mint() public returns(bool){
        address owner=_msgSender();
        if(contains(owner)){
            return false;
        }
        setWallet(owner);
        _mint( owner , 100*10**decimals() );
        return true;
    }

}
// ./MyToken.sol
// SPDX-License-Identifier: MIT



    