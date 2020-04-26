// migrating the appropriate contracts
const FarmerRole = artifacts.require("./FarmerRole.sol");
const DistributorRole = artifacts.require("./DistributorRole.sol");
const RetailerRole = artifacts.require("./RetailerRole.sol");
const ConsumerRole = artifacts.require("./ConsumerRole.sol");
const SupplyChain = artifacts.require("./SupplyChain.sol");

module.exports = async function (deployer) {
  const farmer = await deployer.deploy(FarmerRole);
  const distributor = await deployer.deploy(DistributorRole);
  const retailer = await deployer.deploy(RetailerRole);
  const consumer = await deployer.deploy(ConsumerRole);
  const coffeChain = await deployer.deploy(SupplyChain, FarmerRole.address, ConsumerRole.address, RetailerRole.address, RetailerRole.address);
  
};