// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title PropertyToken
 * @notice Fractional tokenization for real estate properties using ERC1155
 * @dev Each property is represented as a unique tokenId with N fractional units
 */
contract PropertyToken is ERC1155, Ownable {
    uint256 public nextPropertyId;

    struct Property {
        string metadataURI;
        uint256 totalFractions;
        bool exists;
    }

    mapping(uint256 => Property) public properties;

    event PropertyCreated(uint256 propertyId, uint256 fractions, string uri);
    event FractionsIssued(uint256 propertyId, address to, uint256 amount);

    constructor() ERC1155("") Ownable(msg.sender) {}

    function createProperty(
        uint256 fractions,
        string memory uri
    ) external onlyOwner returns (uint256) {
        uint256 propertyId = nextPropertyId++;

        properties[propertyId] = Property({
            metadataURI: uri,
            totalFractions: fractions,
            exists: true
        });

        emit PropertyCreated(propertyId, fractions, uri);
        return propertyId;
    }

    function mintFractions(
        uint256 propertyId,
        address to,
        uint256 amount
    ) external onlyOwner {
        require(properties[propertyId].exists, "Invalid property");
        _mint(to, propertyId, amount, "");
        emit FractionsIssued(propertyId, to, amount);
    }

    function uri(
        uint256 propertyId
    ) public view override returns (string memory) {
        require(properties[propertyId].exists, "Invalid property");
        return properties[propertyId].metadataURI;
    }
}
