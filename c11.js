const { readFileSync } = require('node:fs');
const result = readFileSync('data.json', 'utf-8');
const data = JSON.parse(result);

console.log("Selamat datang di permainan Tebak Kata, silahkan isi dengan jawaban yang benar ya!\n");

const readline = require('node:readline');
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
    prompt: 'Tebakan: ',
});


let counter = 0;

console.log(`Pertanyaan: ${data[counter].definition}`);
rl.prompt();


rl.on('line', (input) => {
    if (input.trim().toLowerCase() !== data[counter].term.toLowerCase()) {
        console.log(`Wkwkwkwk, Anda kurang beruntung!\n`);
    } else {
        console.log(`Selamat Anda Benar!\n`);
        counter++;
        if (counter === data.length) rl.close();
        console.log(`Pertanyaan: ${data[counter].definition}`);
    }

    rl.prompt();

}).on('close', () => {
    console.log('Hore Anda Menang!\n');
    process.exit(0);
});