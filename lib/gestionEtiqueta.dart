import 'package:apptareas/modelos.dart';
import 'package:flutter/material.dart';
import 'modelos.dart';
class gestionEtiqueta extends StatefulWidget {
  final List<modeloEtiqueta> listaEtiqueta;
  const gestionEtiqueta(this.listaEtiqueta,{Key? key}) : super(key: key);

  @override
  State<gestionEtiqueta> createState() => _gestionEtiquetaState(listaEtiqueta);
}

class _gestionEtiquetaState extends State<gestionEtiqueta> {
  final List<modeloEtiqueta> listaEtiqueta;
  _gestionEtiquetaState(this.listaEtiqueta);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GESTIONAR ETIQUETA"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 400,
            width: 300,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: listaEtiqueta.length,
                  itemBuilder: (context, index) {
                    return listaEtiqueta.isEmpty?Text('No hay etiquetas'):Card();
                  },),
            ),
          ),
          const Divider(
            height: 50,
            thickness: 2,
            color: Colors.black,
            endIndent: 50,
            indent: 50,
          ),
          ElevatedButton(
              onPressed: () {

              }, child: const Text('NUEVO')),
          ElevatedButton(
              onPressed: () {

              }, child: const Text('GUARDAR')),
          ElevatedButton(
              onPressed: () {

              }, child: const Text('CERRAR')),
        ],
      ),
    );
  }
}
