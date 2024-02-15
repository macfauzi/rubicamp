const readline = require('node:readline');

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
    prompt: 'tulis kalimatmu disini >  ',
});

rl.prompt();

const sentencesManipulation = (sentence) => {
    const vowels = 'aAiIuUeEoO';

    const manipulatedWords = sentence.split(' ').map(word => {
        if (vowels.includes(word[0])) {
            return `${word}`;
        } else {
            return `${word.substring(1)}${word[0]}nyo`;
        }
    });

    return manipulatedWords.join(' ');
};

rl.on('line', (line) => {
    const manipulatedSentence = sentencesManipulation(line.trim());
    console.log(`hasil konversi: ${manipulatedSentence}`);
    rl.prompt();
}).on('close', () => {
    console.log('Good bye!');
    process.exit(0);
});

// tulis kalimatmu disini > ibu pergi ke pasar
// hasil konversi: ibu ergipnyo eknyo asarpnyo
// tulis kalimatmu disini > ayam
// hasil konversi: ayam
// tulis kalimatmy disini > Good bye!