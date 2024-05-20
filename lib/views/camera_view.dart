import 'package:camera/camera.dart';
import 'package:currency_detection/controller/scan_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CameraView extends StatelessWidget {
  final ScanController controller;

  const CameraView({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade900, Colors.blue.shade600],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  "Currency Detector",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black26,
                        offset: Offset(3.0, 3.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CameraPreview(controller.cameraController),
                  Expanded(
                    child: GestureDetector(
                      onTap: readAloud(),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.2),
                          // borderRadius: BorderRadius.circular(10),
                          // border: Border.all(color: Colors.green, width: 3),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white24,
                              // blurRadius: 10,
                              // offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                controller.label,
                                style: TextStyle(
                                  fontSize: 38,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Center(
                              child: Text(
                                "Tap here to Read Aloud\n",
                                style: TextStyle(
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

readAloud() {
  //write function to read the label at the time of cliking
}
