from django.db import models

# Create your models here.


class Alumno(models.Model):
    """
    
    STATUS = (
        (0, 'Eliminado'),
        (1, 'Activo'),
        #(2, 'Pendiente'),
        #(3, 'Rechazado'),
    )

    status = models.IntegerField(default=1, choices=STATUS)
    """
    # Campos Boleanos
    estado = models.BooleanField(default=True)

    # Campos Texto
    nombre = models.CharField(max_length=200)

    # Campos Numericos
    codigo = models.IntegerField()
    curso = models.IntegerField()
    statura = models.FloatField(blank=True, null=True)
    
    # Campos fechas
    fecha_nacimiento = models.DateField()
    fecha_creacion = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.nombre
