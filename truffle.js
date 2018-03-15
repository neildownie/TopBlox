module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 8545,
      network_id: "*" // Match any network id
    },
    rinkeby: {
      host:"127.0.0.1",
      port:8545,
      network_id: 4,
      gas: 6000000,
      gasPrice: 120
      //from: '0xd2c5118fd2ce53e4047392b31155bb16bc9e8c2f'
    }
  }
};
