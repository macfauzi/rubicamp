function sum(...numbers) {
    //write code here
    console.log(numbers.reduce((accumulator, currentValue) => accumulator + currentValue));
}
sum(1, 2, 7);
sum(1, 4);
sum(11);
sum(10, 3, 6, 7, 9);

// alternatif02 dengan menggunakan Array.from() yang merubah arguments menjadi array

// function sum() {
//     //write code here
//     console.log(Array.from(arguments).reduce((accumulator, currentValue) => accumulator + currentValue));
// }

// sum(1, 2, 7);
// sum(1, 4);
// sum(11);
// sum(10, 3, 6, 7, 9);


// alternatif03 dengan menggunakan Object.values() yang mengambil valuesnya

// function sum() {
//     //write code here
//     console.log(Object.values(arguments).reduce((accumulator, currentValue) => accumulator + currentValue));
// }

// sum(1, 2, 7);
// sum(1, 4);
// sum(11);
// sum(10, 3, 6, 7, 9);

// alternatif04 cara pemula dengan menggunakan for loop

// function sum() {
//     // your code below
//     let hasil = 0;
//     for (let i = 0; i < arguments.length; i++) {
//         hasil += arguments[i];
//     }
//     console.log(hasil);
// }

// sum(1, 2, 7);
// sum(1, 4);
// sum(11);
// sum(10, 3, 6, 7, 9);