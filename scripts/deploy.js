const { ethers } = require("hardhat");

async function main() {
  const PropertyToken = await ethers.getContractFactory("PropertyToken");
  const token = await PropertyToken.deploy();
  await token.deployed();

  console.log("PropertyToken deployed to:", token.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
