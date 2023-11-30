import 'package:flutter/material.dart';
import 'package:pnuts_app/screens/notas.dart';


class HeaderPnuts extends StatefulWidget {
  const HeaderPnuts({super.key});

  @override
  State<HeaderPnuts> createState() => _HeaderPnutsState();
}

class _HeaderPnutsState extends State<HeaderPnuts> {
  @override
  Widget build(BuildContext context) {
    var ancho = (MediaQuery.sizeOf(context).width*.1);
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Padding(
          padding:  EdgeInsets.only(right: ancho ),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment
                  .center, // Centra los elementos en el eje principal
              children: [
                 const Text(
                  'PNuts',
                  style: TextStyle(
                    fontFamily: 'Trajan Pro',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                 const SizedBox(width: 2), // Espacio entre el texto y la imagen
               Image.asset(
                  'lib/images/mani.png',
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(246, 69, 133, 1),
      ),
      body: const Notas(),
      backgroundColor: const Color.fromRGBO(242, 211, 172, 1),
    );
  }
}