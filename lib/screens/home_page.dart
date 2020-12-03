import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers_example/providers/heroesinfo.dart';
import 'package:providers_example/widgets/super_flutteraction.dart';
import 'package:providers_example/widgets/super_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          heroesInfo.heroe,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(child: SuperText()),
      floatingActionButton: SuperFloatingAction(),
    );
  }
}
