// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
import "./SmokeToken.sol";

contract MockSmokeToken is SmokeToken {
    uint256 public fakeBlockTimeStamp;

    constructor(uint256 emissionStart) SmokeToken(emissionStart) {}

    function getTime() internal view override returns (uint256) {
        return fakeBlockTimeStamp;
    }

    function _mock_setBlockTimeStamp(uint256 value) public {
        fakeBlockTimeStamp = value;
    }

    function perToken() internal pure override returns (uint256) {
        return 1;
    }
}
