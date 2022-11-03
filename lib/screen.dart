import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:using_getx/screen_ctr.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String imgName = "fatiha11.png";

  @override
  Widget build(BuildContext context) {
    HomecreenCtr ctr0 = Get.put(HomecreenCtr());
    return Scaffold(
      appBar: AppBar(
        title: const Text('USING GETX'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'LE CORAN',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 30,
          ),
          Obx(() {
            return Image.asset(
              'images/${ctr0.imgName}',
              height: 300,
            );
          }),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {});
              ctr0.imgName = "kursii.png".obs;
              // Getx page Navigator
              //Get.to(() => const Homecreen());
            },
            child: const Text('change image'),
          ),
        ],
      ),
    );
  }
}
