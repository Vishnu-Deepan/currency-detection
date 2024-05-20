import 'package:currency_detection/controller/scan_controller.dart';
import 'package:currency_detection/views/camera_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ScanController>(
        init: ScanController(),
        builder: (controller) {
          return controller.isCameraInitialized.value
              ? CameraView(controller: controller)
              : const Center(
                  child: Text("Enable Camera Permission"),
                );
        },
      ),
    );
  }
}
