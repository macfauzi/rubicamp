function indexPrime(param1) {
    if (param1 < 1) {
        return "Param1 salah, harus lebih besar atau sama dengan 1";
    }

    const primas = [];
    let number = 2;

    while (primas.length < param1) {
        let isPrime = true;

        for (let i = 2; i <= Math.sqrt(number); i++) {
            if (number % i === 0) {
                isPrime = false;
                break;
            }
        }

        if (isPrime) {
            primas.push(number);
        }

        number++;
    }

    return primas[param1 - 1];
}

// Example usage:
console.log(indexPrime(4));
console.log(indexPrime(500));
console.log(indexPrime(37786));
