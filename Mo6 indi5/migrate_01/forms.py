from .models import Asignatura
from django import forms

class AsignaturaFormularioForms(forms.ModelForm):
    class Meta:
        model= Asignatura
        fields='__all__'