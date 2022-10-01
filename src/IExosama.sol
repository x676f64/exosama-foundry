// SPDX-License-Identifier: UNLICENSED
 pragma solidity 0.8.17;

interface IExosama {
 
/// @notice view function
function ADMIN_ROLE() external view returns(bytes32);
function balanceOf(address) external view returns(uint);
function contractURI() external view returns(string memory);
function decimals() external view returns(uint);
function DEFAULT_ADMIN_ROLE() external view returns(bytes32);
function defaultTokenURI() external view returns(string memory);
function exists(uint256) external view returns(bool);
function getApproved(uint256) external view returns(bool);
function getRoleAdmin(bytes32) external view returns(bytes32);
function getRoleMember(bytes32,uint256) external view returns(bytes32);
function getRoleMemberCount(bytes32) external view returns(uint);
function getTransferFee(uint256) external view returns(uint);
function GOVERNANCE_ROLE() external view returns(bytes32);
function hasRole(bytes32,address) external view returns(bool);
function isApprovedForAll(address,address) external view returns(bool);
function isProxy(address,address) external view returns(bool);
function lockedForever() external view returns(bool);
function MANAGER_ROLE() external view returns(bytes32);
function MINTER_ROLE() external view returns(bytes32);
function name() external view returns(string memory);
function owner() external view returns(address);
function ownerOf(uint256) external view returns(address);
function proxyRegistry() external view returns(address);
function royaltyInfo(uint256,uint256) external view returns(uint);
function supportsInterface(bytes4) external view;
function symbol() external view returns(string memory);
function tokenURI(uint256) external view returns(string memory);
function totalSupply() external view returns(uint);
function transferListener() external view returns(address);
function uri(uint256) external view returns(string memory);
function VERSION() external view returns(uint);

/// @notice external state changing function
function approve(address,uint256) external;
function batch(bytes[] calldata,bool) external;
function burn(uint256) external;
function getTransferFee(uint256,string calldata) external;
function grantRole(bytes32,address) external;
function lock() external;
function mint(address,string calldata) external;
function renounceOwnership() external;
function renounceRole(bytes32,address) external;
function revokeRole(bytes32,address) external;
function safeTransferFrom(address,address,uint256,bytes calldata) external;
function safeTransferFrom(address,address,uint256) external;
function setApprovalForAll(address,bool) external;
function setContractURI(string calldata) external;
function setCustomTokenURI(uint256,string calldata) external;
function setDefaultTokenURI(string calldata) external;
function setExtensionTokenURI(string calldata) external;
function setProxyRegistryAddress(address) external;
function setTransferListener(address) external;
function transferFrom(address,address,uint256) external;
function transferOwnership(address) external;
}
