const SimpleStorage = artifacts.require("SimpleStorage");

contract("SimpleStorage", function (accounts) {
    const initContract = async () => {
        return await SimpleStorage.new();
    };

    it("try increase my book", async () => {
        const contractInstance = await initContract(); // will create smart contract and send to blockchain

        await contractInstance.increaseMyBook(2); // I am trying to increase the number of books by 2
        const getQtyMyBook = await contractInstance.qtyMyBook.call(accounts[0]);
        console.log("🚀 ~ file: SimpleStorage.js:13:", getQtyMyBook.toString()); // result getQtyMyBook = 2

        return assert.isTrue(true);
    });

    it("try decrease my book", async () => {
        const contractInstance = await initContract(); // will create smart contract and send to blockchain

        await contractInstance.decreaseMyBook(1); // I want to reduce the number of books by 1
        const getQtyMyBook = await contractInstance.qtyMyBook.call(accounts[0]);
        console.log("🚀 ~ file: SimpleStorage.js:23:", getQtyMyBook.toString()); // result getQtyMyBook = 1

        return assert.isTrue(true);
    });
});