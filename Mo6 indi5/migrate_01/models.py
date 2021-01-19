from django.db import models

# Create your models here.

class Departamento(models.Model):
    nombre = models.CharField(max_length=15)


class Profesor(models.Model):
    nombre = models.CharField(max_length=25)
    apellido = models.CharField(max_length=25)
    escuela = models.CharField(max_length=30)
    fecha_de_contratacion = models.DateField()
    sueldo = models.IntegerField()


class Asignatura(models.Model):
    nombre = models.CharField(max_length=25)
    descripcion = models.CharField(max_length=250) 
    departamento_id = models.ForeignKey(Departamento,on_delete=models.CASCADE, null=True)
    profesor_id = models.ForeignKey(Profesor,on_delete=models.CASCADE, null =True)

    class Meta:
        ordering = ['id']


class Curso(models.Model):
    nombre = models.CharField(max_length=40)
    profesor_id = models.ForeignKey(Profesor,on_delete=models.CASCADE, null= True)
    asignatura_id = models.ForeignKey(Asignatura,on_delete=models.CASCADE)


class Transportista(models.Model):
    nombre = models.CharField(max_length=30)
    patente = models.CharField(max_length=6)


class Alumno(models.Model):
    nombre = models.CharField(max_length=35)
    Edad = models.IntegerField()
    run = models.CharField(max_length=10, primary_key=True)
    transportista_id = models.ForeignKey(Transportista,on_delete=models.CASCADE)
    curso_id = models.ForeignKey(Curso,on_delete=models.CASCADE)







