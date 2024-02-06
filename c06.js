function sentencesManipulation(sentence) {
    const vowels = 'aiueo';

    const manipulatedWords = sentence.split(' ').map(word => {
        if (vowels.includes(word[0])) {
            return word;
        } else {
            return `${word.substring(1)}${word[0]}nyo`;
        }
    });

    return console.log(manipulatedWords.join(' '));
}

sentencesManipulation('ibu pergi ke pasar bersama aku');
// Output: 'ibu ergipnyo eknyo asarpnyo ersamabnyo aku'