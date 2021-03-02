
class Gato:
    nombre = ""
    color = "gris"
    edad = 15

    def ronronear(self):
        return " esta ronroneando"
        
    def __str__(self):
        return "Gato " + self.nombre


gato1 = Gato()
gato2 = Gato()
gato1.nombre = "migels"
gato2.nombre = "gordo"
gato2.color = "blanco"

print("Gato 1", gato1.color)
print("Gato 2", gato2.color)
print("Gato 1", gato1.ronronear())
print("Gato 2", gato2.ronronear())
print(gato2)


def ronronear():
    return " esta ronroneando"

gato3 = {
    'color': "gris",
    'edad': 15,
    'ronronear': ronronear
}

print("Gato 3", gato3['color'])
print("Gato 3", gato3['ronronear']())

gato4 = {
    'color': "gris",
    'edad': 15,
    'ronronear': ronronear
}

print("Gato 4", gato4['color'])
print("Gato 4", gato4['ronronear']())