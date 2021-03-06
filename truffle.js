// Allows us to use ES6 in our migrations and tests.
require('babel-register');

module.exports = {
    networks: {
        ganache: {
            host: '127.0.0.1',
            port: 7545,
            network_id: '*' // Match any network id
        },
        development: {
            host: 'localhost',
            port: 8545,
            network_id: '*',
            gas: 470000,
            from: '0xD76500f49C1E24B6F07778c5Ab7c51059C9e0751'
        },
        live: {
            host: 'localhost',
            port: 8545,
            network_id: '*',
            gas: 335134,
            gasPrice: 4,
            from: '0x7125ead4c84651bd0657a2e61f6acfecd52d0f92'
        }
    }
}
