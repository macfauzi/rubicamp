function spiral(param1) {
    const result = [];
    const matrixSize = param1 * param1;
    let top = 0, bottom = param1 - 1, left = 0, right = param1 - 1;

    while (result.length < matrixSize) {
        // Traverse top row
        for (let i = left; i <= right; i++) {
            result.push(i + top * param1);
        }
        top++;

        // Traverse right column
        for (let i = top; i <= bottom; i++) {
            result.push(right + i * param1);
        }
        right--;

        // Traverse bottom row
        for (let i = right; i >= left; i--) {
            result.push(i + bottom * param1);
        }
        bottom--;

        // Traverse left column
        for (let i = bottom; i >= top; i--) {
            result.push(left + i * param1);
        }
        left++;
    }

    return console.log(result);
}

spiral(5); // [0,1,2,3,4,9,14,19,24,23,22,21,20,15,10,5,6,7,8,13,18,17,16,11,12]
spiral(6); // [0,1,2,3,4,5,11,17,23,29,35,34,33,32,31,30,24,18,12,6,7,8,9,10,16,22,28,27,26,25,19,13,14,15,21,20]
spiral(7); // [0,1,2,3,4,5,6,13,20,27,34,41,48,47,46,45,44,43,42,35,28,21,14,7,8,9,10,11,12,19,26,33,40,39,38,37,36,29,22,15,16,17,18,25,32,31,30,23,24]