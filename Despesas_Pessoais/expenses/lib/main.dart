import 'package:flutter/material.dart';
import 'package:expenses/models/transaction.dart';

main() => runApp(ExpenseApp());

class ExpenseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Despesas Pessoais'),
        ),
        body: Column(
            mainAxisAlignment:
                MainAxisAlignment.spaceAround, //espaço entre os elementos
            crossAxisAlignment:
                CrossAxisAlignment.stretch, //ocupação em toda largura
            children: <Widget>[
              Container(
                  child: Card(
                color: Colors.blue,
                child: Text('Gráfico'),
                elevation: 5,
              )),
              Column(
                children: _transactions.map((tr) {
                  return Card(
                    child: Text(tr.title),
                  );
                }).toList(),
              )
            ]));
  }
}