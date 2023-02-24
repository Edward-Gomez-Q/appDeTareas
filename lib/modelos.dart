import 'package:flutter/material.dart';

class modeloTarea{
  int id;
  String Nombre;
  DateTime Fecha;
  modeloEtiqueta etiqueta;
  modeloTarea(this.id,this.Nombre,this.Fecha,this.etiqueta);
  Map<String,dynamic> toMap(){
    return{'id':id,'Nombre':Nombre,'Fecha':Fecha,'Etiqueta':etiqueta};
  }
}
class modeloEtiqueta
{
  int id;
  String Nombre;
  modeloEtiqueta(this.id,this.Nombre);
  Map<String,dynamic> toMap(){
    return {'id':id,'Nombre':Nombre};
  }
}
