function quickSort(list: Array<number>): any {
    if (list.length < 2) {
        return list;
    } else {
        var pivo = list[0];
        var menores: number[] = [];
        var maiores: number[] = [];

        for (var i = 1; i < list.length; i++) {
            if (list[i] <= pivo) menores.push(list[i]);
        }

        for (var i = 1; i < list.length; i++) {
            if (list[i] > pivo) maiores.push(list[i]);
        }

        return [...quickSort(menores), pivo, ...quickSort(maiores)];
    }
}

function getRandomInt(max: number) {
    return Math.floor(Math.random() * max);
}

const list: number[] = []

for (let i = 0; i < 100; i++) {
    list.push(getRandomInt(1000))
}

console.log(quickSort(list))
