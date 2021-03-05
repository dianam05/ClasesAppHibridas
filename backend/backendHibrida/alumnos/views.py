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
    alumnos = Alumno.objects.filter(curso__curso="6D")
    
    return render(request, "principal.html", {
        'alumnos':alumnos,
        'titulo': "Titulo desde el Render"
    })

    
def formulario_sin_ajax(request):
    alumnos = Alumno.objects.all()
    
    return render(request, "form.html", {
        'alumnos':alumnos,
        'titulo': "Titulo desde el Render"
    })

def formulario_con_ajax(request):
    alumnos = Alumno.objects.all()
    
    return render(request, "form-ajax.html", {
        'alumnos':alumnos,
        'titulo': "Titulo desde el Render"
    })