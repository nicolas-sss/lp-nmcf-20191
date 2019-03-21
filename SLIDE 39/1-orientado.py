'Orientado a objetos.'


class Carro:

    def __init__(self, modelo):
        self.modelo = modelo
        self.QNT_RODAS = 4

    def __str__(self):
        return self.modelo

    def getQntRodas(self):
        return self.QNT_RODAS

    def SetModelo(self, modelo):
        self.modelo = modelo

    def getModelo(self):
        return self.modelo


modelo = input('Digite o modelo do seu carro: ')
carro = Carro(modelo)

print('Modelo ',carro.getModelo(),' possui:', carro.getQntRodas(), 'rodas.\n')