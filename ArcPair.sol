pragma solidity =0.5.16;

contract ArcPair {
    string public constant name = "USDC Directory Pair";
    string public constant symbol = "UD-PAIR";
    uint8 public constant decimals = 18;
    uint public totalSupply;
    mapping(address => uint) public balanceOf;
    mapping(address => mapping(address => uint)) public allowance;

    function _mint(address to, uint value) internal {
        totalSupply += value;
        balanceOf[to] += value;
    }

    function _burn(address from, uint value) internal {
        totalSupply -= value;
        balanceOf[from] -= value;
    }

    function initialize(address, address) external {}
}
