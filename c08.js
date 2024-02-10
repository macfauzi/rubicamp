function pola(str) {
    // your code here
    const result = [];
    for (let i = 0; i < 10; i++) {
        for (let j = 0; j < 10; j++) {
            let newStr = str.replace('#', i).replace('#', j);
            const [left, right] = newStr.split('=');
            if (eval(left) === eval(right)) {
                result.push(i, j);
                return result;
            }

        }
    }
}

console.log(pola("42#3 * 188 = 80#204"));  // Output: [8, 5]
console.log(pola("8#61 * 895 = 78410#5")); // Output: [7, 9]


/* If you don't want to use eval due to security reason, you could use Function constructor as below code 


function cekValue(fn) {
    return new Function('return ' + fn)();
}


function pola(str) {
    // your code here
    const result = [];
    for (let i = 0; i < 10; i++) {
        for (let j = 0; j < 10; j++) {
            let newStr = str.replace('#', i).replace('#', j);
            const [left, right] = newStr.split('=');
            if (cekValue(left) === cekValue(right)) {
                result.push(i, j);
                return result;
            }

        }
    }
}

console.log(pola("42#3 * 188 = 80#204"));  // Output: [8, 5]
console.log(pola("8#61 * 895 = 78410#5")); // Output: [7, 9]
console.log(pola("7285#323 + 986 = 72857#09")) // Output: [6, 3] */