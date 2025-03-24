pragma solidity 0.8.24;

import "./interfaces/IResultado.sol";

contract Sumador {

    //Object: Interfaz + address smart contract que se quiere inicializar
    address public resultado;

    constructor(address resultado_) {
        resultado = resultado_;
    }

    function addition(uint256 num1_, uint256 num2_) external {
        uint256 resultado_ = num1_ + num2_;
        IResultado(resultado).setResultado(resultado_);
    }

    function setFee(uint256 newFee_) external {
        IResultado(resultado).setFee(newFee_);
    }

    
}