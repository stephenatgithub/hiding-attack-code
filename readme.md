## Vulnerability

Solidity calls other contracts using the call method.

It calls according to the contract address, but not the contract name.


## Preventative Techniques

Never trust external contract address that is unverified.

Double checked the univerified address when calling another contract.

Remove contract address in constructor.

Initialize a new contract inside the constructor.

Make the address of external contract public so that the code of the external contract can be reviewed

