import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:prospectos/pages/home/home_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      dispose: (_) {},
      init: HomeController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          elevation: 4,
          title: Text("Prospectos"),
        ),
      ),
    );
  }
}
