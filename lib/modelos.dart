import 'package:flutter/material.dart';

class modeloTarea{
  String Nombre;
  DateTime Fecha;
  modeloEtiqueta etiqueta;
  modeloTarea(this.Nombre,this.Fecha,this.etiqueta);
  Map<String,dynamic> toMap(){
    return{'Nombre':Nombre,'Fecha':Fecha,'Etiqueta':etiqueta};
  }
}
class modeloEtiqueta
{
  String Nombre;
  modeloEtiqueta(this.Nombre);
  Map<String,dynamic> toMap(){
    return {'Nombre':Nombre};
  }
}
