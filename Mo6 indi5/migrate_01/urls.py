from django.urls import path
from . import views


app_name = 'migrate_01'
urlpatterns = [
    path('asignatura/', views.asignaturax , name = 'asignatura'),
    path('profesor/', views.profesorx , name = 'profesor' ),
    path('alumno/', views.mostrar_alumnos, name = 'alumno'),
    path('lista_asignatura/', views.ListarAsignatura.as_view(), name = 'lista_asignatura'),
    path('add_transportista/', views.add_transportista, name ='add_transportista'),
    path('ver_alumnos/', views.mostrar_alumnos, name = 'ver_alumnos'),
    path('ver_transportistas/', views.mostar_transportistas, name ='ver_transportistas'),
]