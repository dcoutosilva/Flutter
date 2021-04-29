import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';
import './resultado.dart';

main() {
  runApp(new PerguntasApp());
}

class _PerguntasAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': ['Preto', 'Amarelo', 'Verde'],
    },
    {
      'texto': 'Qual o seu animal favorito?',
      'respostas': ['Gato', 'Cachorro', 'Leão'],
    },
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  /* void Function() funcaoQueRetornaOutraFuncao() {
    return () {
      print('Pergunta Respondida #02');
    };
  }*/

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada]['respostas']
        : null;

    //tem pergunta selecionada, se sim, ele entra, se não vai pra null

    // for (String in textoResp in respostas ){
    //  widgets.add(Resposta(textoResp, _responder));
    // }
    //

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Column(
                children: [
                  Questao(_perguntas[_perguntaSelecionada]['texto']),
                  ...respostas.map((t) => Resposta(t, _responder)).toList(),
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
              )
            : Resultado(),
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
