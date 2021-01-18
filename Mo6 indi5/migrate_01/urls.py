from django.urls import path
from . import views


app_name = 'migrate_01'
urlpatterns = [
    path('asignatura/', views.asignaturax , name = 'asignatura'),
    path('profesor/', views.profesorx , name = 'profesor' ),
    path('alumno/', views.mostrar_alumnos, name = 'alumno'),
    path('lista_asignatura/', views.ListarAsignatura.as_view(), name = 'lista_asignatura')
]