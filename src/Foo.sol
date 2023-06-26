// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Foo {
    Bar bar;

    constructor(address _bar) {
        bar = Bar(_bar);
    }

    function callBar() public {
        bar.log();
    }
}

contract Bar {
    event Log(string message);

    function log() public {
        emit Log("Bar was called");
    }
}

// This code is hidden in a separate file
contract Attack {
    event Log(string message);    
    
    function log() public {
        emit Log("Attack was called");
    }

    // Actually we can execute the same exploit even if this function does
    // not exist by using the fallback
    fallback() external {
        emit Log("Attack was called");
    }

}
