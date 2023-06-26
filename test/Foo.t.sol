// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/Foo.sol";

contract FooTest is Test {
    Foo public foo;
    Bar public bar;
    Attack public attack;

    function testAttack() public {   
        bar = new Bar();     
        attack = new Attack();
        foo = new Foo(address(attack));

        console.log("Bar deployed at ", address(bar));
        console.log("Foo deployed at ", address(foo));
        console.log("Attack deployed at ", address(attack));

        foo.callBar();
    }
}
