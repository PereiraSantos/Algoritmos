estados_abranger = set(["Acre","Alagoas","Bahia","Goiás", "Paraná", "Tocantins", "São Paulo", "Rio de Janeiro"])

estacoes = {}
estacoes["k1"] = set(["Goiás", "Paraná", "Tocantins"])
estacoes["k2"] = set(["Alagoas", "Goiás", "Acre"])
estacoes["k3"] = set(["Bahia", "Paraná", "São Paulo"])
estacoes["k4"] = set(["Paraná", "Tocantins"])
estacoes["k5"] = set(["São Paulo", "Rio de Janeiro"])

estacoes_finais = set()

while estados_abranger:
    melhor_estacao = None
    estados_cobertos = set()

    for estacao, estados in estacoes.items():
        cobertos = estados_abranger & estados
        if len(cobertos) > len(estados_cobertos):
            melhor_estacao = estacao
            estados_cobertos = cobertos

    estados_abranger -= estados_cobertos
    estacoes_finais.add(melhor_estacao)


print(estacoes_finais)
