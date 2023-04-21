const Learn = artifacts.require("Learn");

contract("Learn", function (accounts) {
    it("try increase my book", async () => {
        let getQtyMyBook;
        const contractInstance = await Learn.new(); // will create smart contract and send to blockchain

        await contractInstance.increaseMyBook(2); // I am trying to increase the number of books by 2
        getQtyMyBook = await contractInstance.qtyMyBook.call(accounts[0]);
        console.log("🚀 ~ file: learn.js:19 ~ it ~ contractInstance:", getQtyMyBook.toString()); // result getQtyMyBook = 2

        await contractInstance.decreaseMyBook(1); // I want to reduce the number of books by 1
        getQtyMyBook = await contractInstance.qtyMyBook.call(accounts[0]);
        console.log("🚀 ~ file: learn.js:22 ~ it ~ contractInstance:", getQtyMyBook.toString()); // result getQtyMyBook = 1

        return assert.isTrue(true);
    });
});