var TopBlox = artifacts.require("./TopBlox.sol");
var Cars = artifacts.require("./Cars.sol");

module.exports = function(deployer) {
  deployer.deploy(TopBlox);
  deployer.deploy(Cars);
};
