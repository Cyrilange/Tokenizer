

const { Wallet } = require("ethers");

const mnemonic = "island away angle hour corn practice drive bless wheel aware owner view";

const wallet = Wallet.fromPhrase(mnemonic);

console.log("ADDRESS:", wallet.address);
console.log("PRIVATE KEY:", wallet.privateKey);
