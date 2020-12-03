import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Pagina'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Text("Texto Pagina 2"),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Volver"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
