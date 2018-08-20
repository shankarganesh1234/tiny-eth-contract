Tinybit.link Dapp
==========


# Installation

- __Geth__
```
brew install ethereum
```  

- __Rinkeby Testnet__ 
```
geth --rinkeby --syncmode "fast" --rpc --rpcapi db,eth,net,web3,personal --cache=1024  --rpcport 8545 --rpcaddr 127.0.0.1 --rpccorsdomain "*
```

- __Truffle Installation__
```
npm install -g truffle
```

- __Truffle project setup
```
mkdir tiny
cd tiny
npm install -g webpack
truffle unbox webpack

```

The 'Tiny Contract' and the 2_deploy_contracts.js have already been modified to deploy tiny contract.

- __Deploy to Rinkeby__
```
truffle console
web3.personal.newAccount('verystrongpassword')
web3.eth.getBalance('0x95a94979d86d9c32d1d2ab5ace2dcc8d1b446fa1')
web3.personal.unlockAccount('0x95a94979d86d9c32d1d2ab5ace2dcc8d1b446fa1', 'verystrongpassword', 15000)
```

- __Get test ether__

Use the address from the previous step, to get test ether from rinkeby faucet : https://faucet.rinkeby.io/

- __Deploy contract to Rinkeby__
```
truffle migrate
```

- __Contract address__
```
Contract - 0x481053B400252324B9601308d21e602a4e2Bf935
```

- __Interact with contract__
```
truffle console

// create
Tiny.deployed().then(function(contractInstance) {contractInstance.addKv('0x5e3b184a67285b67ba3577cf9e8eb2c7209366f9', '0x4b6167652042756e7368696e204a75747375').then(function(v) {console.log(v)})})

// get
Tiny.deployed().then(function(contractInstance) {contractInstance.getKv('0x5e3b184a67285b67ba3577cf9e8eb2c7209366f9').then(function(v) {console.log(v)})})
```
