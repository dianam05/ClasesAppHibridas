"""
    Con JavaScript
    function MyFirstFunction() {
        console.log("Hola Mundo");
    }
    console.log("Hola Mundo 2");
    MyFirstFunction()
"""
# Para Python

def MyFirstFunction():

    print("Hola Mundo")
    print("Hola Mundo")
    print("Hola Mundo")

print("Hola Mundo 2")
MyFirstFunction()

'''

    var miNombre = "Felipe";
    var nombre = "Juan";

    function escribirBienvenida2(nombre, colorTexto) {
        document.write("<font color='" + colorTexto + "'>");

        document.write("<h1>Hola " + nombre + "</h1>");
        document.write("</font>");
    }
    var miColor = "red";
    escribirBienvenida2("Sebastian", "blue");
    escribirBienvenida2(miNombre);
    document.write(nombre);
'''


miNombre = "Felipe"
nombre = "Juan"

def escribirBienvenida2(nombre, colorTexto = None):
    print("<font color='" + str(colorTexto) + "'>")

    print("<h1>Hola " + nombre + "</h1>")
    print("</font>")

miColor = "red"
escribirBienvenida2("Sebastian", "blue")
escribirBienvenida2(miNombre)
print(nombre + str(3))

"""
function areatriangulo(base, altura) {
    var resultado;
    resultado = (base * altura) / 2
    return resultado
    resultado = 10;
    return resultado
}
var areademitriangulo;
areademitriangulo = areatriangulo(2, 8);
"""
def areatriangulo(base, altura):
    resultado = (base * altura) / 2
    return resultado
    resultado = 10
    return resultado

areademitriangulo = areatriangulo(2, 8)