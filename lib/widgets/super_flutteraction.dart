import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers_example/providers/heroesinfo.dart';
import 'package:providers_example/providers/villanosinfo.dart';

class SuperFloatingAction extends StatelessWidget {
  const SuperFloatingAction({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);
    final villanosInfo = Provider.of<VillanosInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {
            heroesInfo.heroe = "Ironman";
            villanosInfo.villano = "Mandarin";
          },
          child: Icon(
            Icons.access_time,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {
            heroesInfo.heroe = "Capitan America";
            villanosInfo.villano = "Red Skull";
          },
          child: Icon(Icons.access_alarm),
        )
      ],
    );
  }
}
