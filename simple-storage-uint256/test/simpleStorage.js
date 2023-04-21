const SimpleStorage = artifacts.require("SimpleStorage");

contract("SimpleStorage", function (accounts) {
    let contractInstance;
    it("try create smart contract", async () => {
        contractInstance = await SimpleStorage.new();
        return assert.isTrue(true);
    });

    it("try increase my book", async () => {
        await contractInstance.increaseMyBook(2); // I am trying to increase the number of books by 2
        const getQtyMyBook = await contractInstance.qtyMyBook.call(accounts[0]);
        console.log("🚀 ~ file: SimpleStorage.js:13:", getQtyMyBook.toString()); // result getQtyMyBook = 2

        return assert.isTrue(true);
    });

    it("try decrease my book", async () => {
        await contractInstance.decreaseMyBook(1); // I want to reduce the number of books by 1
        const getQtyMyBook = await contractInstance.qtyMyBook.call(accounts[0]);
        console.log("🚀 ~ file: SimpleStorage.js:23:", getQtyMyBook.toString()); // result getQtyMyBook = 1

        return assert.isTrue(true);
    });
});