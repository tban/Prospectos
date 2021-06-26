import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:prospectos/pages/splash/splash_controller.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      dispose: (_) {},
      init: SplashController(),
      builder: (_) => Scaffold(
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LinearProgressIndicator(
                  minHeight: 15,
                ),
                Text(
                  "Prospectos",
                  textScaleFactor: 3,
                  style: TextStyle(color: Colors.blueGrey),
                ),
                LinearProgressIndicator(
                  minHeight: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
