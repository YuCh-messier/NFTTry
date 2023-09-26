const AoCoin = artifacts.require("AoCoin.sol");

module.exports = function(deployer) {
  deployer.deploy(AoCoin);
};
