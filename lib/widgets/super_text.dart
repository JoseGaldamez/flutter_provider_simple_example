import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers_example/providers/heroesinfo.dart';
import 'package:providers_example/providers/villanosinfo.dart';

class SuperText extends StatelessWidget {
  const SuperText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final villanoInfo = Provider.of<VillanosInfo>(context);
    final heroeInfo = Provider.of<HeroesInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text(villanoInfo.villano), Text(heroeInfo.heroe)],
    );
  }
}
