// var ConvertLib = artifacts.require('./ConvertLib.sol')
// var MetaCoin = artifacts.require('./MetaCoin.sol')
//
// module.exports = function (deployer) {
//   deployer.deploy(ConvertLib)
//   deployer.link(ConvertLib, MetaCoin)
//   deployer.deploy(MetaCoin)
// }
//

var Tiny = artifacts.require('./Tiny.sol')
module.exports = function (deployer) {
  deployer.deploy(Tiny, { gas: 6700000 })
}