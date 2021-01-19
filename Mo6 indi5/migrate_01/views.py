from django.shortcuts import render, redirect
from .models import Departamento,Asignatura,Profesor,Alumno,Transportista
from django.urls import reverse_lazy
from django.views.generic import ListView
from django.views.generic.edit import CreateView, UpdateView, DeleteView
from .forms import AsignaturaFormularioForms
# Create your views here.

def asignaturax(request):
    departamento = Departamento.objects.create(
        nombre='filosofia'
    )
    Departamento.objects.values()
    departamento.save()
    for i in range(0,5):
        asignatura = Asignatura(nombre= 'Walter',
        descripcion = 'walter es muy pesaito',
        )    
    asignatura.save()
    asignatura = Asignatura.objects.values()
    context = {'asig': asignatura}    
    return render(request, 'migrate_01/asignatura.html', context)

def add_transportista(request):
    for i in range(0,5):
        transportista = Transportista(nombre= 'Claudio',
        patente= 'AZDB12'
        )
    transportista.save()
    transportista = Transportista.objects.values()
    context = {'transportista': transportista}
    return render(request, 'migrate_01/transportistas.html', context)

def profesorx(request):
    for i in range(0,5):
        profe = Profesor(nombre= 'Claudio',
        apellido = 'Caniullan',
        escuela = 'Manuel de salas',
        fecha_de_contratacion = '2017-02-28',
        sueldo = 1100000
        )
    profe.save()
    profe = Profesor.objects.values()
    context = {'profe': profe}
    return render(request, 'migrate_01/profesor.html', context)

#MUESTRA ALUMNOS
def mostrar_alumnos(request):
    listar_alumnos = list(Alumno.objects.all().values())
    datos = {'alumnos': listar_alumnos}
    return render(request,'migrate_01/ver_alumnos.html', context= datos)

def mostrar_asignatura(request):
    listar_asignatura = list(Asignatura.objects.all().values())
    datos = {'asignatura': listar_asignatura}
    return render(request,'migrate_01/ver_asignatura.html', context= datos)

#MUESTRA TRANSPORTISTAS
def mostar_transportistas(request):
    lista_transportista = list(Transportista.objects.all().values())
    datos = {'transportistas': lista_transportista}
    return render(request,'migrate_01/ver_transportistas.html', context= datos)

#CREAR ASIGNATURA
def crear_asignatura(request):
    asignatura = AsignaturaFormularioForms(request.POST or None)
    context = {'asignatura': asignatura}
    if asignatura.is_valid():
        form_data = asignatura.cleaned_data
        Asignatura.objects.create(
                    nombre=form_data['nombre'], 
					descripcion=form_data['descripcion'], 
					departamento_id=form_data['departamento_id'], 
					profesor_id=form_data['profesor_id'],
                    )
        return redirect('migrate_01:mostrar_asignatura')
    return render(request, 'migrate_01/crear_asignatura.html', context)

#EDITAR ASIGNATURA
def editar_asignatura(request, id):
    asignatura = Asignatura.objects.filter(id=id).values()[0]
    formulario_asignatura = AsignaturaFormularioForms(request.POST or None, initial=asignatura)    
    if formulario_asignatura.is_valid():
        form_data = formulario_asignatura.cleaned_data
        Asignatura.objects.filter(id=id).update(
                    nombre=form_data['nombre'], 
					descripcion=form_data['descripcion'], 
					departamento_id=form_data['departamento_id'], 
					profesor_id=form_data['profesor_id'],
                    )

        return redirect('migrate_01:mostrar_asignatura')
    context = {'formulario_asignatura': formulario_asignatura, 'id' : id}
    return render(request, 'migrate_01/editar_asignatura.html', context)

#ELIMINAR ASIGNATURA

def eliminar_asignatura(request, id):
    if request.method == "POST":
        Asignatura.objects.filter(id=id).delete()
        return redirect('migrate_01:mostrar_asignatura')
    context = {'id': id} 
    return render(request, "migrate_01/confirmar_delete.html", context)

class CrearAsignatura(CreateView):
    model= AsignaturaFormularioForms 
    fields= '__all__'
    success_url = reverse_lazy('migrate_01:asignatura')

class EliminarAsignatura(DeleteView):
    model= AsignaturaFormularioForms 
    fields= '__all__'
    success_url = reverse_lazy('migrate_01:asignatura')

class EditarAsignatura(UpdateView):
    model= AsignaturaFormularioForms 
    fields= '__all__'
    success_url = reverse_lazy('migrate_01:asignatura')

class ListarAsignatura(ListView):
    model= AsignaturaFormularioForms 
    fields= '__all__'
    success_url = reverse_lazy('migrate_01:lista_asignatura')


