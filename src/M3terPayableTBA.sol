// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {ERC6551Account} from "ERC6551Reference@0.3.1/examples/simple/ERC6551Account.sol";
import {IProtocol} from "./interfaces/IProtocol.sol";

contract M3terPayableTBA is ERC6551Account {
    IProtocol public constant PROTOCOL = IProtocol(0x2b3997D82C836bd33C89e20fBaEF96CA99F1B24A);

    receive() external payable override {
        (, , uint256 tokenId) = token();
        PROTOCOL.pay{value: msg.value}(tokenId);
    }
}
