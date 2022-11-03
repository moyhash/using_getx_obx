import 'package:get/get.dart';

class HomecreenCtr extends GetxController {
  //RxString imgName = "fatiha2.png".obs;
  //RxBool acttive = false.obs;

  var imgName = "fatiha2.png".obs;

  //Function
  changeImage() {
    imgName.value = "koursi.png";
  }
}

// GetX
// Obx
