// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IProtocol {
    function pay(uint256 tokenId) external payable;
}
