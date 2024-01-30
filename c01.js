function sum(...numbers) {
    //write code here
    return numbers.reduce((accumulator, currentValue) => accumulator + currentValue);
}
console.log(sum(1, 2, 7));
console.log(sum(1, 4));
console.log(sum(11));
console.log(sum(10, 3, 6, 7, 9));