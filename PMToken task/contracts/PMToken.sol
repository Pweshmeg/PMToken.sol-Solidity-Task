// SPDX-License-Identifier:MIT

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PMToken is ERC20 {
    address public admin;
    constructor() ERC20 ("PMToken", "PIM") {
        _mint(msg.sender, 1000000*10**18);
        admin=msg.sender;
    }

    function mint(address to, uint256 amount) external{
        require (msg.sender == admin, 'only owner');
        _mint (to, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

   
}
