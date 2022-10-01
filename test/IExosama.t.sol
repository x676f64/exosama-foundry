// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.4;

import {Cheats} from "forge-std/Cheats.sol";
import {console} from "forge-std/console.sol";
import {Utils} from "forge-std/Utils.sol";
import {PRBTest} from "@prb/test/PRBTest.sol";
import { IExosama } from "src/IExosama.sol";

/// @dev See the "Writing Tests" section in the Foundry Book if this is your first time with Forge.
/// https://book.getfoundry.sh/forge/writing-tests
contract ExoSamaTest is PRBTest, Cheats, Utils {

    IExosama public exo;

    address public constant TREASURY = 0x495E889d1A6cEB447a57dcc1C68410299392380c;
    address public constant b00bs = 0xb00b5d9339333891FbB06e63A7321f54B89C46Fb;

    function setUp() public {

        exo = IExosama(0xAc5C7493036dE60e63eb81C5e9A440b42f47ebF5);
        
    function testName() public view returns (string memory) {
        return exo.name();
    }

    function testDecimals() public view returns (uint) {
        return exo.decimals();
    }

    function testSymbol() public view returns (string memory) {
        return exo.symbol();
    }

    function testTotalSupply() public view returns (uint) {
        return exo.totalSupply();
    }

    function testBalanceOf() public view returns (uint) {
        return exo.balanceOf(0xAc5C7493036dE60e63eb81C5e9A440b42f47ebF5);
    }

    function testOwner() public view returns (address) {
        return exo.owner();
    }

    function testBalanceOfTreasury() public view returns (uint) {
        return exo.balanceOf(TREASURY);
    }

    function testContractURI() public view returns (string memory) {
        return exo.contractURI();
    }

    function testLock() public {
        assertFalse(exo.lockedForever());
        vm.startPrank(address(TREASURY), address(TREASURY)); 
        exo.lock();
        assertTrue(exo.lockedForever());
        vm.stopPrank();
    }

    function testSafeTransferFrom() public {
        testLock();
        vm.startPrank(address(TREASURY), address(TREASURY)); 
        exo.safeTransferFrom(TREASURY, address(b00bs), 1);
        assertTrue(true);
    }

    function testBurnWithLock() public returns(uint) {
        testLock();
        vm.startPrank(address(TREASURY), address(TREASURY)); 
        testTotalSupply();
        for (uint i = 1; i < 3; i++) {
            exo.burn(i);
        }
        uint totalSupply = testTotalSupply();
        assertEq(totalSupply, uint(9998));
        return totalSupply;
    }
}
