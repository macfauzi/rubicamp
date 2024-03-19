const params = process.argv;
const { readFileSync, writeFileSync } = require('fs');
const { todo } = require('node:test');

function help() {
    console.log(`
>>> JS TODO <<<
$ node todo.js list
$ node todo.js <command>
$ node todo.js task <task_id>
$ node todo.js add <task_content>
$ node todo.js delete <task_id>
$ node todo.js complete <task_id>
$ node todo.js uncomplete <task_id>
$ node todo.js list:outstanding asc|desc
$ node todo.js list:completed asc|desc
$ node todo.js tag <task_id> <tag_name_1> <tag_name_2> ... <tag_name_N>
$ node todo.js filter:<tag_name>
    `)
}

const read = () => {
    return JSON.parse(readFileSync('todo.json', 'utf-8'));
}

const save = (value) => {
    writeFileSync('todo.json', JSON.stringify(value), 'utf-8');
}

const data = read();
let taskId, sortOrder, filteredData;

switch (params[2]) {
    case 'list':
        console.log(`Daftar Pekerjaan`);
        data.forEach((todo, index) => {
            console.log(`${index + 1}. [${todo.complete ? 'X' : ' '}] ${todo.title}`)
        });
        break;

    case 'add':
        const title = params.slice(3).join(' ')
        data.push({ title: title, complete: false },)
        save(data)
        console.log(`"${title}" telah ditambahkan.`)
        break;

    case 'delete':
        taskId = params[3] - 1;
        if (isNaN(taskId) || taskId < 0 || taskId >= data.length) {
            console.log("Invalid task ID.");
        } else {
            console.log(`"${data[taskId].title}" telah dihapus dari daftar`);
            data.splice(taskId, 1);
            save(data);
        }
        break;

    case 'complete':
        taskId = params[3] - 1;
        if (isNaN(taskId) || taskId < 0 || taskId >= data.length) {
            console.log("Invalid task ID.");
        } else {
            console.log(`"${data[taskId].title}" telah selesai.`);
            data[taskId].complete = true;
            save(data);
        }
        break;

    case 'uncomplete':
        taskId = params[3] - 1;
        if (isNaN(taskId) || taskId < 0 || taskId >= data.length) {
            console.log("Invalid task ID.");
        } else {
            data[taskId].complete = false;
            save(data);
            console.log(`"${data[taskId].title}" status selesai dibatalkan.`);
        }
        break;

    case 'list:outstanding':
        sortOrder = params[3];
        console.log(`Daftar Pekerjaan`);
        filteredData = data.filter(todo => !todo.complete);

        if (sortOrder === 'asc') {
            filteredData.forEach((todo, index) => {
                console.log(`${index + 1}. [${todo.complete ? 'X' : ' '}] ${todo.title}`);
            });
        } else {
            filteredData.reverse().forEach((todo, index) => {
                console.log(`${index + 1}. [${todo.complete ? 'X' : ' '}] ${todo.title}`);
            });
        }
        break;

    case 'list:completed':
        sortOrder = params[3];
        console.log(`Daftar Pekerjaan`);
        filteredData = data.filter(todo => todo.complete);

        if (sortOrder === 'asc') {
            filteredData.forEach((todo, index) => {
                console.log(`${index + 1}. [${todo.complete ? 'X' : ' '}] ${todo.title}`);
            });
        } else {
            filteredData.reverse().forEach((todo, index) => {
                console.log(`${index + 1}. [${todo.complete ? 'X' : ' '}] ${todo.title}`);
            });
        }
        break;

    default:
        help();
        break;
}
