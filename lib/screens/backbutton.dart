import 'package:flutter/material.dart';


class BackButton extends StatefulWidget{
  const BackButton({super.key});
  
  @override
  State<BackButton> createState() => _BotonBackState();

}


class _BotonBackState extends State<BackButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        print('Regresar al menú');
      },shape: Border.all(color: Colors.transparent), backgroundColor: Colors.transparent, elevation: 0,
      
      child: const Icon(Icons.arrow_back,), // Cambia este icono según tus necesidades
    );
  }
}