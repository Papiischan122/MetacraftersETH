

# Create a Token

Solidity is an object-oriented programming language created specifically by the Ethereum Network team for constructing and designing smart contracts on Blockchain platforms. It's used to create smart contracts that implement business logic and generate a chain of transaction records in the blockchain system.


## Getting Started

### Executing program

1. Access Remix:
 Open your web browser and go to the Remix website: https://remix.ethereum.org/Open your web browser and go to the Remix website: https://remix.ethereum.org/

2. Create or Import a File:
 *If you're creating a new Solidity file, click the "+" icon in the file explorer on the left and create a new file with the '.sol' extension.
*If you have an existing Solidity file, you can click the "Open" icon in the file explorer and upload your file.

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


3.Write Solidity Code:
In the editor area, write or paste your Solidity code. Make sure your code is free of syntax errors and follows best practices for smart contract development.

4.Select Compiler Version:
*Click on the "Solidity" tab located on the right side of the screen.
*Choose the desired compiler version from the dropdown menu. Select the version that is compatible with your code.

5. Compile the Contract:
   *After selecting the compiler version, you'll see compilation options below.
   *Click the "Compile" button to start the compilation process. Remix will analyze your code and generate the necessary bytecode and ABI (Application Binary Interface) files.

   

7. View Compilation Output:
   *Once the compilation process is complete, you'll see the compilation output in the "Compile" tab on the right side
   *You'll be able to see information about each of your contracts, including their bytecode, ABI, and more.

 7.Check for Errors:
 *f there are any errors in your code, Remix will display them in the compilation output. Review these errors and make the necessary corrections in your code.

 8. Access Compiled Artifacts:
    *In the "Compile" tab, you can find the compiled artifacts, including bytecode and ABI, for each contract. You can copy these artifacts for use in deployment or interaction with your contracts.


    ## Author
    **Christian Llanes**


##License
This project is licensed under the CHRISTIAN LLANES License - see the LICENSE.md file for details



