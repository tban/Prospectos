import 'package:get/get.dart';
import 'package:prospectos/pages/home/home_page.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    //cargar parámetros y cuando es loading true
    Future.delayed(
      Duration(seconds: 1),
      () {
        //Una vez cargados. Get.off elimina la página Splash de la pila
        Get.off(() => HomePage(), transition: Transition.zoom);
      },
    );
  }

  @override
  void onClose() {
    //Usar para cerrar conexión websocket, terminar reproducción audio o video, etc
    //Podemos hacerlo directamente en el widget (*dispose*)
    super.onClose();
  }
}
