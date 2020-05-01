// migrating the appropriate contracts

const SupplyChain = artifacts.require("./SupplyChain.sol");

module.exports = async function (deployer) {

  const _SupplyChain = await deployer.deploy(SupplyChain);
  
};