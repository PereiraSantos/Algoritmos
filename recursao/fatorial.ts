function findFatorial(fatorial: number): number{
    if (fatorial == 1) return 1;
    return fatorial * findFatorial(fatorial - 1);
}

console.log(findFatorial(8))
