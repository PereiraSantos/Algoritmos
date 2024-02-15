function buscaBinaria(array:number [], item: number): number | undefined {
    let menor = 0
    let maior = array.length - 1

    while(menor <= maior){
        let meioIndex = Math.floor((menor + maior) / 2)
        let meio = array[meioIndex]

        if (meio == item ) return meioIndex

        if (meioIndex > item){
            maior = meioIndex - 1
        } else {
            menor = meioIndex + 1
        }
    }

    return undefined
}

const list:number[] = []

for (let i = 0; i < 10000; i++) {
    list.push(i)
}

var result = buscaBinaria(list, 900)

result === undefined 
    ? console.log("Número não encontrado") 
    : console.log(list[result])
