estados_abranger = set(["Acre","Alagoas","Bahia","Goiás", "Paraná", "Tocantins", "São Paulo", "Rio de Janeiro"])

estacoes = {}
estacoes["kun"] = set(["Goiás", "Paraná", "Tocantins"])
estacoes["kdois"] = set(["Alagoas", "Goiás", "Acre"])
estacoes["ktres"] = set(["Bahia", "Paraná", "São Paulo"])
estacoes["kquatro"] = set(["Paraná", "Tocantins"])
estacoes["kcinco"] = set(["São Paulo", "Rio de Janeiro"])

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
