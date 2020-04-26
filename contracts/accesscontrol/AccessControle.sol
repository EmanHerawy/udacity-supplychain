pragma solidity ^0.5.10;
import './RetailerRole.sol';
import './DistributorRole.sol';
import './ConsumerRole.sol';
import './FarmerRole.sol';

contract AccessControle  {
     FarmerRole _farmer;
      ConsumerRole _consumer ;
      DistributorRole _distributor;
      RetailerRole _retailer;

      constructor(address _farmerAddress  ,address _consumerAddress , address _retailerAddress  , address _distributorAddress)internal {
               _farmer = FarmerRole(_farmerAddress);
              _consumer = ConsumerRole(_consumerAddress);
              _retailer = RetailerRole(_retailerAddress);
              _distributor = DistributorRole(_distributorAddress);

      }
      modifier canHarvest() {
    require(_farmer.isFarmer(msg.sender),"Only Farmer can Harvest");
    _;
}
modifier canProcess() {
    require(_farmer.isFarmer(msg.sender),"Only Farmer can Processed");
    _;
}
modifier canPacked() {
    require(_farmer.isFarmer(msg.sender),"Only Farmer can Packed");
    _;
}
modifier canShipped() {
    require(_farmer.isFarmer(msg.sender),"Only Farmer can Shipped");
    _;
}
modifier canAdd() {
    require(_farmer.isFarmer(msg.sender),"Only Farmer can Add");
    _;
}
modifier canBuy() {
    require(_distributor.isDistributor(msg.sender) || _consumer.isConsumer(msg.sender) ,"Only Distributor Or Consumer can Buy");
    _;
}
modifier canReceived() {
    require(_retailer.isRetailer(msg.sender),"Only Retailer can Received");
    _;
}
    function _setFarmerAddress(address contractAddress) internal returns (bool status) {
            _farmer = FarmerRole(contractAddress);
            return true;
      }
    function _setConsumerAddress(address contractAddress) internal returns (bool status) {
            _consumer = ConsumerRole(contractAddress);
            return true;
      }
    function _setRetailerAddress(address contractAddress) internal returns (bool status) {
            _retailer = RetailerRole(contractAddress);
            return true;
      }
    function _setDistributorAddress(address contractAddress) internal returns (bool status) {
            _distributor = DistributorRole(contractAddress);
            return true;
      }
    function  getFarmerAddress() public returns ( FarmerRole contractAddress) {
             return _farmer;
      }
    function  getConsumerAddress() public returns ( ConsumerRole contractAddress) {
            return _consumer;
      }
    function  getRetailerAddress() public returns ( RetailerRole contractAddress) {
           
            return _retailer;
      }
    function  getDistributorAddress() public returns ( DistributorRole contractAddress) {
            
            return _distributor;
      }

}