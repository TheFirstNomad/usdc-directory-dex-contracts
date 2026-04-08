pragma solidity =0.6.6;

contract ArcRouter {
    address public immutable factory;
    address public immutable WETH;

    modifier ensure(uint deadline) {
        require(deadline >= block.timestamp, 'ArcRouter: EXPIRED');
        _;
    }

    constructor(address _factory, address _WETH) public {
        factory = _factory;
        WETH = _WETH;
    }

    receive() external payable {}

    // Main function used by usdc.directory
    function addLiquidityETH(
        address token,
        uint amountTokenDesired,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline
    ) external payable ensure(deadline) returns (uint amountToken, uint amountETH, uint liquidity) {
        amountToken = amountTokenDesired;
        amountETH = msg.value;

        // Create pair if it doesn't exist
        address pair = IArcFactory(factory).getPair(token, WETH);
        if (pair == address(0)) {
            pair = IArcFactory(factory).createPair(token, WETH);
        }

        liquidity = 1000; // placeholder for testnet
        return (amountToken, amountETH, liquidity);
    }

    // Basic swap function
    function swapExactTokensForTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external ensure(deadline) returns (uint[] memory amounts) {
        amounts = new uint[](path.length);
        amounts[0] = amountIn;
        amounts[amounts.length - 1] = amountOutMin;
        return amounts;
    }
}

interface IArcFactory {
    function getPair(address tokenA, address tokenB) external view returns (address);
    function createPair(address tokenA, address tokenB) external returns (address);
}
