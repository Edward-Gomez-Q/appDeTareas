import 'package:apptareas/gestionEtiqueta.dart';
import 'package:flutter/material.dart';
import 'modelos.dart';
import 'gestionEtiqueta.dart';
class Tarea extends StatefulWidget {
  final List<modeloTarea> listaTarea;
  const Tarea(this.listaTarea,{Key? key}) : super(key: key);

  @override
  State<Tarea> createState() => _TareaState(listaTarea);
}

class _TareaState extends State<Tarea> {
  final List<modeloTarea> listaTarea;
  _TareaState(this.listaTarea);
  TextEditingController controllerNombre= TextEditingController();
  TextEditingController controllerFecha= TextEditingController();
  List<modeloEtiqueta> listaEtiqueta=[];
  @override
  void initState() {
    super.initState();
  }
  Future<void> _seleccionFecha(BuildContext context) async{
    final DateTime? Fecha= await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2050));
    if(Fecha!=null)
    {
      controllerFecha.text= '${Fecha.day.toString().padLeft(2, '0')}/${Fecha.month.toString().padLeft(2, '0')}/${Fecha.year.toString()}';
      setState(() {

      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("REGISTRAR NUEVA TAREA"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nombre de la Tarea'),
                  TextField(
                    controller: controllerNombre,
                    decoration: InputDecoration(
                        border: OutlineInputBorder()
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Fecha de cumplimento'),
                  TextField(
                    readOnly: true,
                    controller: controllerFecha,
                    decoration: InputDecoration(
                        border: OutlineInputBorder()
                    ),
                    onTap: () => _seleccionFecha(context),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Etiqueta'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      listaEtiqueta.isEmpty?Text('No hay etiquetas'):DropdownButton(
                        items:[],
                        onChanged: (value) {

                        },),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => gestionEtiqueta(listaEtiqueta),));
                        },
                        child: Icon(Icons.edit),

                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
