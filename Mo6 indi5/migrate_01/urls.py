from django.urls import path
from . import views


app_name = 'migrate_01'
urlpatterns = [
    path('asignatura/', views.asignaturax , name = 'asignatura'),
    path('profesor/', views.profesorx , name = 'profesor' ),
    path('alumno/', views.mostrar_alumnos, name = 'alumno'),
    path('mostrar_asignatura/', views.mostrar_asignatura, name = 'mostrar_asignatura'),
    path('add_transportista/', views.add_transportista, name ='add_transportista'),
    path('ver_alumnos/', views.mostrar_alumnos, name = 'ver_alumnos'),
    path('ver_transportistas/', views.mostar_transportistas, name ='ver_transportistas'),
    path('crear_asignatura', views.crear_asignatura, name ='crear_asignatura'),
    path('<id>/editar_asignatura', views.editar_asignatura, name = 'editar_asignatura'),
    path('<id>/eliminar_asignatura', views.eliminar_asignatura, name ='eliminar_asignatura')
]