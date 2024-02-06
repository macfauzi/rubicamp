function stringManipulation(word) {
    // write your code here
    const vowels = 'aAiIuUeEoO';
    if (vowels.includes(word[0])) {
        return console.log(word);
    } else {
        return console.log(word.substring(1) + word[0] + 'nyo');
    }
}


stringManipulation('ayam'); // "ayam"
stringManipulation('bebek'); // "ebekbnyo"
stringManipulation('Ayam'); // "Ayam"
stringManipulation('Bebek'); // "ebekBnyo"