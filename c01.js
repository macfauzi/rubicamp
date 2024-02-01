function sum(...numbers) {
    //write code here
    console.log(numbers.reduce((accumulator, currentValue) => accumulator + currentValue));
}
sum(1, 2, 7);
sum(1, 4);
sum(11);
sum(10, 3, 6, 7, 9);