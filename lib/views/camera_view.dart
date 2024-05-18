import 'package:camera/camera.dart';
import 'package:currency_detection/controller/scan_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CameraView extends StatelessWidget {
  const CameraView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ScanController>(
        init: ScanController(),
        builder: (controller) {
          return controller.isCameraInitialized.value
              ? Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).padding.top,
                    ),
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Center(
                        child: Text(
                          "Currency Detector",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 26,
                          ),
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        CameraPreview(controller.cameraController),
                        Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(color: Colors.green, width: 4),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                color: Colors.white,
                                child: Text(controller.label),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                )
              : const Center(
                  child: Text("Enable Camera Permission"),
                );
        },
      ),
    );
  }
}
