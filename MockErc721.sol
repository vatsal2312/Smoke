// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
import "./ERC721.sol";
import "./ERC721Enumerable.sol";

contract MockERC721 is ERC721("Name", "Token"), ERC721Enumerable {
    function mint() external {
        _safeMint(msg.sender, totalSupply());
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 tokenId
    ) internal override(ERC721, ERC721Enumerable) {
        super._beforeTokenTransfer(from, to, tokenId);
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override(ERC721, ERC721Enumerable) returns (bool) {
        return interfaceId == type(IERC721Enumerable).interfaceId || super.supportsInterface(interfaceId);
    }

}

