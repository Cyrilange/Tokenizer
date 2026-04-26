// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import {Test} from "forge-std/Test.sol";
import {SocialFi42} from "../code/SocialFi.sol";

contract SocialFi42Test is Test {
    SocialFi42 public token;
    address public owner = address(0x1);
    address public alice = address(0x2);
    address public bob   = address(0x3);

    function setUp() public {
        vm.prank(owner);
        token = new SocialFi42(owner);
    }

    function test_NomEtSymbole() public view {
        assertEq(token.name(),   "SocialFi42");
        assertEq(token.symbol(), "SCF");
    }

    function test_Decimals() public view {
        assertEq(token.decimals(), 18);
    }

    function test_OwnerEstCorrect() public view {
        assertEq(token.owner(), owner);
    }

    function test_SupplyInitialeEstZero() public view {
        assertEq(token.totalSupply(), 0);
    }

    function test_OwnerPeutMinter() public {
        vm.prank(owner);
        token.mint(alice, 1000e18);
        assertEq(token.balanceOf(alice), 1000e18);
        assertEq(token.totalSupply(),    1000e18);
    }

    function test_NonOwnerNePeutPasMinter() public {
        vm.prank(alice);
        vm.expectRevert();
        token.mint(alice, 1000e18);
    }

    function test_TransferTokens() public {
        vm.prank(owner);
        token.mint(alice, 1000e18);

        vm.prank(alice);
        bool success = token.transfer(bob, 200e18);
        assertTrue(success);

        assertEq(token.balanceOf(alice), 800e18);
        assertEq(token.balanceOf(bob),   200e18);
    }
}
