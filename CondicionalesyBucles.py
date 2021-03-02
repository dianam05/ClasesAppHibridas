

"""

function multipleReturn(numero) {
    var resto = numero % 2
    console.log(resto);
    if (resto == 0) return 0
    return numero
}
var value = multipleReturn(9);
"""
def multipleReturn(numero):
    
    resto = numero % 2
    print(resto)
    if resto == 0:
        return 0
    elif numero == 9:
        return numero + 1
    else:
        return numero

value = multipleReturn(9)
print(value)

### Bucles

"""

    var i;
    for (i = 0; i <= 50; i += 2) {
        document.write(i);
        document.write("<br>");
    }

"""
for i in range(0, 51, 2):
    print(i)


print(cadenaConcatenada)