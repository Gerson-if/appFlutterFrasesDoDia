import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeApp();
}

class HomeApp extends State<Home> {
  List _frases = [
    "Que o ano que se inicia traga consigo novas oportunidades e realizações",
    "Que cada dia seja repleto de alegrias e momentos inesquecíveis",
    "Desejo que a saúde esteja sempre presente, acompanhada de paz e harmonia",
    "Que as conquistas sejam constantes e as dificuldades superadas com sabedoria",
    "Que a felicidade seja a trilha que guia seus passos em cada jornada",
    "Que o novo ano seja um capítulo de sucesso e prosperidade em sua história",
  ];

  var _fraseGerada = "Click Abaixo para Gerar uma frase!";

  void _gerarFrase() {
    // numeros aleatorio
    var numeroSorteado = Random().nextInt(_frases.length);

    print(numeroSorteado);
    // para atualizar a tela usamos um setState
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia "),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          // width: 700,
          width: double.infinity,
          decoration:
              BoxDecoration(border: Border.all(width: 3, color: Colors.amber)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "images/logo.jpg",
                width: 600, // tamnho imagem manual
              ),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                  // fontFamily: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              ElevatedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    //wordSpacing: double.negativeInfinity,
                    //letterSpacing: 2,
                  ), // fim estilo do texto do botao
                ),
                onPressed: () {
                  // funcao aninomima
                  _gerarFrase();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
