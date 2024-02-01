function romawi(n) {
    //write code here
    const nDecimals = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];
    const simbolRomawi = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"];

    let angkaRomawi = "";

    for (let i = 0; i < nDecimals.length; i++) {
        while (n >= nDecimals[i]) {
            angkaRomawi += simbolRomawi[i];
            n -= nDecimals[i];
        }
    }
    return angkaRomawi;
}

console.log("Script Testing untuk Konversi Romawi\n");
console.log("input | expected | result");
console.log("------|----------|-------");
console.log("4     | IV       | ", romawi(4));
console.log("9     | IX       | ", romawi(9));
console.log("13    | XIII     | ", romawi(13));
console.log("1453  | MCDLIII  | ", romawi(1453));
console.log("1646  | MDCXLVI  | ", romawi(1646));
