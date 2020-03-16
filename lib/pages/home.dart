import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobxapp/controllers/counter_controller.dart';

class Home extends StatelessWidget {
  final counterController = CounterController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MobX"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.plus_one,
              color: Colors.white,
            ),
            onPressed: () {
              counterController.increment();
            },
          )
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Observer(builder: (_) {
            return Text(
              "${counterController.counter}",
              style: TextStyle(color: Colors.black, fontSize: 55.0),
            );
          }),
        ),
      ),
    );
  }
}
