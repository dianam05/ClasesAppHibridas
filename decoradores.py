estado = True
def decorador(f):
    if estado:
        return f
    return "No es valido"

@decorador
def principal():
    print("Hola Mundo 2!")

if type(principal) is not str:
    principal()