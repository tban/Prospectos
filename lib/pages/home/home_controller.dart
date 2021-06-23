import 'package:get/get_state_manager/get_state_manager.dart';

class HomeController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    //cargar parámetros
  }

  @override
  void onClose() {
    //Usar para cerrar conexión websocket, terminar reproducción audio o video, etc
    //Podemos hacerlo directamente en el widget (*dispose*)
    super.onClose();
  }
}
