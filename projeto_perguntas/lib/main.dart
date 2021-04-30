import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() {
  runApp(new PerguntasApp());
}

class _PerguntasAppState extends State<PerguntasApp> {
  var perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final perguntas = const [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Amarelo', 'pontuacao': 5},
        {'texto': 'Verde', 'pontuacao': 3},
      ],
    },
    {
      'texto': 'Qual o seu animal favorito?',
      'respostas': [
        {'texto': 'Gato', 'pontuacao': 1},
        {'texto': 'Cachorro', 'pontuacao': 3},
        {'texto': 'Leão', 'pontuacao': 4},
      ],
    },
  ];
  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  /* void Function() funcaoQueRetornaOutraFuncao() {
    return () {
      print('Pergunta Respondida #02');
    };
  }*/

  @override
  Widget build(BuildContext context) {
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
            ? Questionario(
                perguntas: perguntas,
                perguntaSelecionada: perguntaSelecionada,
                quantoResponder: _responder,
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
