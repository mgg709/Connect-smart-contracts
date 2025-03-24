//SPDX-License-Identifier: LGPL-3.0-only

pragma solidity 0.8.24;

contract Resultado {

    uint256 public resultado;
    address public admin;
    uint256 public fee;

    constructor(address admin_) {
        admin = admin_;
        fee = 5;
    }

    function setResultado(uint256 num_) external {
        resultado = num_;
    }

    function setFee(uint256 newFee_) external {
        if (tx.origin != admin) revert();
        fee = newFee_;
    }
}