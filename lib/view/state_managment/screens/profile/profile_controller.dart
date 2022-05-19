import 'package:get/get.dart';

class ProfileController extends GetxController {
  int counter = 0;

  void incremant() {
    counter++;
    update();
  }

  void decremant() {
    counter--;
    update();
  }
}
