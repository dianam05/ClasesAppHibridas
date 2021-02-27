
class Mascotas:
    nombre = ""
    color = "gris"
    edad = 15

    def __str__(self):
        return "Gato " + self.nombre
    
    def alimentarse(self):
        print(self.nombre + " se esta alimentando")
    


class Gato(Mascotas):
    si_tiene_rayas = True

    def ronronear(self):
        print(self.nombre, " esta ronroneando")


class Perro(Mascotas):
    orejas_caidas = True

    def ladra(self):
        print(self.nombre, " esta ladrando")

gato1 = Gato()
gato1.nombre = "bigotes"
gato1.alimentarse()
gato1.ronronear()
        
perro1 = Perro()
perro1.nombre = "firulais"
perro1.alimentarse()
perro1.ladra()

