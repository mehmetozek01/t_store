import 'package:get/get.dart';
import 'package:t_store/utils/popups/networdk_menager.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}
