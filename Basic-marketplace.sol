// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC20 {
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
}

contract DigitalMarketplace {
    address public tokenAddress; // ERC20 token used for payments
    uint256 public itemCount;

    struct Item {
        uint256 id;
        string name;
        uint256 price; // in token smallest unit (e.g., wei for ETH or decimals for ERC20)
        address seller;
        address buyer;
        bool isSold;
    }

    mapping(uint256 => Item) public items;

    event ItemListed(uint256 indexed itemId, string name, uint256 price, address seller);
    event ItemPurchased(uint256 indexed itemId, address buyer);

    constructor(address _tokenAddress) {
        tokenAddress = _tokenAddress;
    }

    function listItem(string memory _name, uint256 _price) external {
        require(_price > 0, "Price must be greater than 0");

        itemCount++;
        items[itemCount] = Item(itemCount, _name, _price, msg.sender, address(0), false);

        emit ItemListed(itemCount, _name, _price, msg.sender);
    }

    function purchaseItem(uint256 _itemId) external {
        Item storage item = items[_itemId];
        require(!item.isSold, "Item already sold");
        require(item.seller != msg.sender, "Seller cannot buy their own item");

        // Transfer tokens from buyer to seller
        require(
            IERC20(tokenAddress).transferFrom(msg.sender, item.seller, item.price),
            "Token transfer failed"
        );

        item.buyer = msg.sender;
        item.isSold = true;

        emit ItemPurchased(_itemId, msg.sender);
    }

    function getItem(uint256 _itemId) external view returns (
        uint256 id,
        string memory name,
        uint256 price,
        address seller,
        address buyer,
        bool isSold
    ) {
        Item memory item = items[_itemId];
        return (item.id, item.name, item.price, item.seller, item.buyer, item.isSold);
    }
}

