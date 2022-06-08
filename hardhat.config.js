require("@nomiclabs/hardhat-waffle");

const RINKEBY_RPC_URL = process.env.RINKEBY_RPC_URL;
const PRIVATE_KEY = process.env.PRIVATE_KEY;

// You need to export an object to set up your config
// Go to https://hardhat.org/config/ to learn more

/**
 * @type import('hardhat/config').HardhatUserConfig
 */
module.exports = {
  solidity: "0.8.4",
  networks: {
    rinkeby: {
      url: `https://rinkeby.infura.io/v3/e05b373e4bbf45739b0d55968fe8a105`,
      accounts: [
        "0x4e09cc6fd8271ce5b3a4ec1dd8d001816a43cbaf5c4ffbcd9d066329c7c2298a",
      ],
    },
  },
};
