import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() {
  runApp(new PerguntasApp());
}

class _PerguntasAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  /* void Function() funcaoQueRetornaOutraFuncao() {
    return () {
      print('Pergunta Respondida #02');
    };
  }*/

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        'texto': 'Qual sua cor favorita?',
        'respostas': ['Preto', 'Amarelo', 'Verde'],
      },
      {
        'texto': 'Qual o seu animal favorito?',
        'respostas': ['Gato', 'Cachorro', 'Leão'],
      },
    ];

    List<Widget> respostas=[];

    for (String in textoResp in perguntas[_perguntaSelecionada]['respostas']){
      respostas.add(Resposta(textoResp, _responder));
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto']),
            ...respostas,
            /* Resposta('Resposta 1', _responder),
            Resposta('Resposta 2', _responder),
            Resposta('Resposta 3', _responder),*/

            /* ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: _responder, //o void _responder fica sem (),
              //você só chama o metodo, você não passa por parâmetro
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: _responder,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: _responder,
              /* funcaoQueRetornaOutraFuncao() nesse caso, uma função chama outra função,*/
            ),*/
          ],
        ),
      ),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  _PerguntasAppState createState() {
    return _PerguntasAppState();
  }
}

/* toda vez que tenha _ na frente de um nome, se torna uma classe privada

onde qualquer arquivo externo não consiga acessar a classe

ctrl D seleciona os caracteres iguais
*/
