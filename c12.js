if (process.argv[2] !== 'data.json') {
    console.log(`Tolong sertakan nama file sebagai inputan soalnya 
Misalnya 'node solution.js data.json'`);
    process.exit();
}

const { readFileSync } = require('node:fs');
const result = readFileSync('data.json', 'utf-8');
const data = JSON.parse(result);

console.log(`Selamat datang di permainan Tebak-tebakan. kamu adakan diberikan pertanyaan dari file ini '${process.argv[2]}'.
Untuk bermain, jawablah dengan jawaban yang sesuai.
Gunakan 'skip' untuk menangguhkan pertanyaannya, dan di akhir pertanyaan akan ditanyakan lagi.\n`);

const readline = require('node:readline');
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
    prompt: 'Jawaban: ',
});


let counter = 0;
let wrongGuess = 0;
let skip = 0;

console.log(`Pertanyaan: ${data[counter].definition}`);
rl.prompt();


rl.on('line', (input) => {
    if (input.trim().toLowerCase() === data[counter].term.toLowerCase()) {
        console.log(`\nAnda Beruntung!\n`);
        counter++;
        if (counter === data.length) rl.close();
        console.log(`Pertanyaan: ${data[counter].definition}`);
    } else if (input.trim().toLowerCase() === 'skip') {
        skip++;
        wrongGuess = 0;
        data.push(data[counter]);
        data.splice(counter, skip);
        console.log(`Pertanyaan: ${data[counter].definition}\n`);
    } else {
        wrongGuess++
        console.log(`\nAnda Kurang Beruntung! anda telah salah ${wrongGuess} kali, silahkan coba lagi.\n`);
    }

    rl.prompt();

}).on('close', () => {
    console.log(`Anda Berhasil!\n`);
    process.exit(0);
});