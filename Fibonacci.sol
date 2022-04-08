// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.13;

//Smart Contrat para obtener la sucesión o serie de Fibonacci.
contract fibonacci{
    //Función para obtener el fibonacci
    function fib(uint n) pure external returns(uint){
        //declaración del f0
        if(n==0){
            return 0;
        }
        //Declaracion del f1 y f2
        uint fi_1 = 1;
        uint fi_2 = 1;
        //Loop para obtener el fibo a partir de la segunda posición.
        for(uint i= 2; i<n;i++){
            uint fi = fi_1 + fi_2;
            fi_2 = fi_1;
            fi_1 = fi;
        }
        return fi_1;
    }

}