
var Tiny = artifacts.require('./Tiny.sol')
module.exports = function (deployer) {
  deployer.deploy(Tiny, { gas: 6700000 })
}
