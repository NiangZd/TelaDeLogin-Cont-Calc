import 'package:flutter/material.dart';

class EntradaUm extends StatefulWidget{
  const EntradaUm({super.key});

  @override
  State<EntradaUm> createState() => EntradaUmP();
}

class EntradaUmP extends State<EntradaUm>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
              Color.fromRGBO(1, 58, 44, 1),
              Color.fromARGB(255, 79, 216, 182),
                ],
              ),
            ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Center(
                    child: Image.asset(
                      '_imagens/logo.png',
                  ),
                ),
                    const Center(
                      child: SizedBox(
                        width: 400,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: TextField(
                          decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                          labelText: 'Login',
                          border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          ),
                    ),
                  ),
                        ),
                      ),
                ),
                const Center(
                      child: SizedBox(
                        width: 400,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                          fillColor: Colors.black,
                          contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                          labelText: 'Senha',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black
                              ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
                 Center(
                   child: SizedBox(
                    width: 100,
                    height: 40,
                     child: Card(
                      elevation: 10,
                       child: ElevatedButton(
                        onPressed: () 
                        { 
                            Navigator.pushNamed(context, "/entrada2");
                          }, 
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                          ),
                          child: 
                            const Center(child: 
                             Text(
                              'ENTRAR'
                            )
                          ),
                        ),
                     ),
                   ),
                 )
              ],
            ),
          ),
        ),
      ),
    );
  }
}