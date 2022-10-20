import 'package:flutter/material.dart';
 //teste github

class EntradaDois extends StatefulWidget{
  const EntradaDois({super.key});

  @override
  State<EntradaDois> createState() => EntradaDoisP();
}

class EntradaDoisP extends State<EntradaDois>{


  
    void acrescentar(){
      setState(() {
        _contador = _contador + 1;
      });
    }

    void diminuir(){
      setState(() {
        _contador = _contador - 1;
      });
    }

    void dobrar(){
      setState(() {
        _contador = _contador * 2;
      });
    }

    void dividir(){
      setState(() {
        _contador = _contador ~/ 2;
      });
    }

  late int _contador = 0;

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Seja bem-vindo!'),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
              Color.fromARGB(255, 5, 15, 36),
              Color.fromARGB(255, 211, 11, 28),
                  ],
                ),
              ),
              child: Center(
                child: Text(
                      '$_contador',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        ),
                      ),
              ),
            ),
          ),

            floatingActionButton: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                      FloatingActionButton(
                        heroTag: 'botão 1',
                        
                        onPressed: () { 
                          acrescentar();
                         },
                         tooltip: 'Mais',
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: const Icon(Icons.add),
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      
                      FloatingActionButton(
                            heroTag: 'botão 2',
                            onPressed: (){
                              diminuir();
                          },
                              tooltip: 'Menos',
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                              child: const Icon(Icons.remove),
                          ),

                             const SizedBox(
                        height: 20,
                      ),

                    FloatingActionButton(
                            heroTag: 'botão 3',
                            onPressed: (){
                              dobrar();
                          },
                              tooltip: 'Dobrar',
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              child: const Icon(Icons.multiple_stop),
                          ),

                    const SizedBox(
                        height: 20,
                    ),

                    FloatingActionButton(
                            heroTag: 'botão 4',
                            onPressed: (){
                              dividir();
                          },
                              tooltip: 'Dividir',
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                              child: const Icon(Icons.share),
                          ),

                    const SizedBox(
                        height: 20,
                    ),                      

                   ],
                 ),
              ),
        );
      }
    }

   class teste {
    
   } 