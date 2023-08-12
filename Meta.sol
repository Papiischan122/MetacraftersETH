contract MyToken {
    string public tokenName;
    string public tokenAbbrv;
    uint256 public totalSupply;

    mapping(address => uint256) public balances;

    constructor(string memory _name, string memory _abbrv, uint256 _initialSupply) {
        tokenName = _name;
        tokenAbbrv = _abbrv;
        totalSupply = _initialSupply;
        balances[msg.sender] = _initialSupply;
    }

    function mint(address _receiver, uint256 _value) public {
        require(_value > 0, "Mint value must be greater than 0");
        totalSupply += _value;
        balances[_receiver] += _value;
    }

    function burn(uint256 _value) public {
        require(balances[msg.sender] >= _value, "Insufficient balance");
        require(_value > 0, "Burn value must be greater than 0");
        totalSupply -= _value;
        balances[msg.sender] -= _value;
    }
}
