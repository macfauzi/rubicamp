function deretKaskus(n) {
    let deret = [];
    for (let i = 1; i <= n; i++) {
        let num = i * 3;
        if (num % 5 === 0 && num % 6 === 0) {
            deret.push('KASKUS');
        } else if (num % 5 === 0) {
            deret.push('KAS');
        } else if (num % 6 === 0) {
            deret.push('KUS');
        } else {
            deret.push(num);
        }
    }
    return deret;
}

console.log(deretKaskus(10));