import 'package:get/get.dart';
import 'package:t_store/utils/popups/network_manager.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}
