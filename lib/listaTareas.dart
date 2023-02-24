import 'package:flutter/material.dart';
import 'modelos.dart';
import 'Tarea.dart';
class listaTareas extends StatefulWidget {
  static List<modeloTarea> listaTarea=[];
  static List<modeloEtiqueta> listaEtiqueta=[];
  const listaTareas({Key? key}) : super(key: key);
  @override
  State<listaTareas> createState() => _listaTareasState();
}

class _listaTareasState extends State<listaTareas> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TODO APP"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: listaTareas.listaTarea.isEmpty?Text('No tienes tareas registradas'):ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: listaTareas.listaTarea.length,
          itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Row(
                children: [
                  Text('${listaTareas.listaTarea[index].Nombre}')
                ],
              ),

            ),
          );
        },),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Tarea()));
        },
      ),
    );
  }
}
