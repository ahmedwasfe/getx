import 'package:get/get.dart';

class HomePageController extends GetxController {
  // int counter = 0;
  RxInt counter = 0.obs;
  RxInt x = 0.obs;
  int result = 0;

  // void increment(){
  //   counter++;
  //   update();
  // }
  //
  // void decrement(){
  //   counter--;
  //   update();
  // }

  void sumNumbers() {
    result = counter.value + x.value;
  }

  void minNumbers() {
    result = counter.value - x.value;
  }

  int get sum => counter.value + x.value;

  void increment() {
    counter++;
  }

  void decrement() {
    counter--;
  }

  void incrementX() {
    x++;
  }

  void decrementX() {
    x--;
  }
}
