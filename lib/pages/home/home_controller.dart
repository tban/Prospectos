import 'dart:async';
import 'dart:ui';
import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prospectos/api/cimaapi.dart';
import 'package:prospectos/models/apiresultbyname/resultado.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController {
  Timer? debouncer;
  RxString? query;
  RxList<Resultado>? resultados;
  RxBool isLoading = false.obs;

  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    //cargar parámetros
  }

  @override
  void onClose() {
    //Usar para cerrar conexión websocket, terminar reproducción audio o video, etc
    //Podemos hacerlo directamente en el widget (*dispose*)
    debouncer?.cancel();
    super.onClose();
  }

  //
  void debounce(
    VoidCallback callback, {
    Duration duration = const Duration(milliseconds: 1000),
  }) {
    if (debouncer != null) {
      debouncer!.cancel();
    }

    debouncer = Timer(duration, callback);
  }

  //
  searchItem(String query) async => debounce(() async {
        if (query.length == 0) return;
        isLoading.value = true;
        resultados = await CimaApi.getByName(query).then((value) => value.obs);
        isLoading.value = false;
        update(["apifromname"]);
      });
  //
  openProspecto(Resultado resultado) async {
    String? nreg = resultado.nregistro;
    String url = "https://cima.aemps.es/cima/pdfs/p/$nreg/P_$nreg.pdf";
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: Platform.isAndroid ? false : true,
        forceWebView: Platform.isAndroid ? false : true,
        enableJavaScript: true,
      );
    } else {
      Get.snackbar("Aviso", "No es posible abrir la URL",
          colorText: Colors.white, backgroundColor: Colors.red);
      throw 'No es posible abrir $url';
    }
  }
}
