// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

import { IERC20 } from "@openzeppelin/contracts-0.8/token/ERC20/IERC20.sol";
import "../../interfaces/balancer/IFeeDistributor.sol";

// @dev - Must be funded by transferring crv to this contract post deployment, as opposed to minting directly
contract MockFeeDistributor is IFeeDistributor {
    mapping(address => uint256) private tokenRates;

    constructor(address[] memory _tokens, uint256[] memory _rates) {
        for (uint256 i = 0; i < _tokens.length; i++) {
            tokenRates[_tokens[i]] = _rates[i];
        }
    }

    function claimToken(address user, IERC20 token) external returns (uint256) {
        return _claimToken(user, token);
    }

    function _claimToken(address user, IERC20 token) internal returns (uint256) {
        uint256 rate = tokenRates[address(token)];
        if (rate > 0) {
            token.transfer(user, rate);
        }
        return rate;
    }

    function claimTokens(address user, IERC20[] calldata tokens) external returns (uint256[] memory) {
        uint256[] memory rates = new uint256[](tokens.length);
        for (uint256 i = 0; i < tokens.length; i++) {
            rates[i] = _claimToken(user, tokens[i]);
        }
        return rates;
    }

    function getTokenTimeCursor(
        IERC20 /* token */
    ) external pure returns (uint256) {
        return 1;
    }

    function checkpointUser(address user) external {
        /* do nothing */
    }

    function getUserTimeCursor(address user) external view returns (uint256) {
        /* do nothing */
    }

    function getTimeCursor() external view returns (uint256) {
        /* do nothing */
    }

    function depositToken(IERC20 token, uint256 amount) external {}

    function getNextNonce(address) external view returns (uint256) {
        return 0;
    }

    function setOnlyCallerCheckWithSignature(
        address,
        bool,
        bytes memory
    ) external {}
}
