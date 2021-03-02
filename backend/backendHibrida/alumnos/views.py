from django.shortcuts import render
from .models import Alumno
from rest_framework import generics
from alumnos.serializers import AlumnoSerializer

class AlumnoList(generics.ListCreateAPIView):
    serializer_class = AlumnoSerializer
    queryset = Alumno.objects.all()

class AlumnoDetail(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = AlumnoSerializer
    queryset = Alumno.objects.all()
    
# Create your views here.
def principal(request):
    alumnos = Alumno.objects.filter (curso__curso="6D")
    print(type(alumnos))
    for dato in alumnos:
        print(dato)
        print("Nombre", dato.nombre)
        print("Fecha nacimiento", dato.fecha_nacimiento)
    
    return render(request, "principal.html", {
        'alumnos':alumnos,
        'titulo': "Titulo desde el Render"
    })