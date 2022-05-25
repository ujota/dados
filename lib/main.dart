import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Dados'),
          backgroundColor: Colors.black,
        ),
        body: _novaPaginaDados(),
      ),
    ),
  );
}

class _novaPaginaDados extends StatefulWidget {
  const _novaPaginaDados({Key? key}) : super(key: key);

  @override
  State<_novaPaginaDados> createState() => new __novaPaginaDadosState();
}

class __novaPaginaDadosState extends State<_novaPaginaDados> {
  Random random = new Random();
  int bandeira1 = 1;
  int bandeira2 = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  bandeira1 = random.nextInt(20) + 1;
                });
              },
              child: Image.asset('images-bandeira/bandeira$bandeira1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
