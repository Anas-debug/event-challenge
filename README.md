# Starter Hardhat Project for Event Challenge

After cloning the github, you will want to do the following to get the code running on your computer.

1. Inside the project directory, in the terminal type: `npm i`
2. Open two additional terminals in your VS code
3. In the second terminal type: `npx hardhat node`
4. In the third terminal, type: `npx hardhat run --network localhost scripts/deploy.js`
5. Back in the first terminal, type: `npx hardhat console --network localhost`
6. Then we'll use this command to attach our smart contract to our console:</br>
   `const payementSolution = await (await ethers.getContractFactory("PayementSolution")).attach("0x5FbDB2315678afecb367f032d93F642f64180aa3")`
   
Once the contract is attached, you can go ahead and call the smart contract functions!

Here is an example you can run using our hardhat provided accounts:

  1. `await payementSolution.deposit("0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266", 1)`
  2. `await payementSolution.getBalance("0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266")`
  3. `await payementSolution.transfer("0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266", "0x70997970C51812dc3A010C7d01b50e0d17dc79C8", 1)`
  4. `await payementSolution.getBalance("0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266")`
  5. `await payementSolution.getBalance("0x70997970C51812dc3A010C7d01b50e0d17dc79C8")`
  6. `await payementSolution.withdraw("0x70997970C51812dc3A010C7d01b50e0d17dc79C8", 1)`
  7. `await payementSolution.getBalance("0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266")`
