import { ethers } from "hardhat";

async function main() {

  const conditionalCBDCTransfer = await ethers.deployContract("ConditionalCBDCTransfer");

  await conditionalCBDCTransfer.waitForDeployment();

  console.log("ConditionalCBDCTransfer deployed to : ",await conditionalCBDCTransfer.getAddress());
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
