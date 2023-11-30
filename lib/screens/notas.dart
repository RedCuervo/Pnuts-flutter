import 'package:flutter/material.dart';

class Notas extends StatelessWidget {
  const Notas({super.key});

  @override
  Widget build(BuildContext context) {
    var alturaMedia = MediaQuery.of(context).size.height * .80;
    var ancho = MediaQuery.of(context).size.width * .5;
    return SafeArea(
      bottom: true,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    color: const Color.fromRGBO(242, 211, 172, 1),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(221, 165, 124, 1),
                          ),
                          child: Column(
                            children: [
                              SafeArea(
                                bottom: true,
                                child: SizedBox(
                                  height: alturaMedia,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      initialValue:
                                          'Aquí un texto muy largo.....Lorem ipsum es el texto que se usa habitualmente en',
                                      style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontFamily: 'Trajan Pro', fontWeight: FontWeight.w700),
                                      maxLines: null,
                                      decoration: null,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 26,),
                      ElevatedButton(
                        onPressed: () {
                          // Lógica del primer botón
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(16),
                          shape: const CircleBorder(),
                          backgroundColor: Colors.amber,
                        ),
                        child: const Icon(
                          Icons.remove_red_eye,
                          weight: 100,
                          size: 25,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: ancho),
                      ElevatedButton(
                        onPressed: () {
                          // Lógica del segundo botón
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(16),
                          shape: const CircleBorder(),
                          backgroundColor: Colors.red,
                        ),
                        child: const Icon(
                          Icons.delete,
                          color: Colors.black,
                          weight: 100,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
