pragma solidity ^0.8.0;

import "../protocol/libraries/position/Position.sol";
import "../protocol/libraries/position/PositionLimitOrder.sol";
import "../protocol/libraries/position/PositionHouseFunction.sol";


contract PositionHouseFunctionTest {
    function getClaimAmount(
        address _pmAddress,
        address _trader,
        Position.Data memory _positionData,
        Position.Data memory _positionDataWithoutLimit,
        PositionLimitOrder.Data[] memory _limitOrders,
        PositionLimitOrder.Data[] memory _reduceLimitOrders,
        uint256 _canClaimAmountInMap,
        int256 _manualMarginInMap,
        int256 _debtProfit
    ) public view returns (int256 totalClaimableAmount){
        return PositionHouseFunction.getClaimAmount(
                _pmAddress,
                _manualMarginInMap,
                _positionData,
                _positionDataWithoutLimit,
                _limitOrders,
                _reduceLimitOrders,
                _canClaimAmountInMap,
                _debtProfit
        );
    }
}
