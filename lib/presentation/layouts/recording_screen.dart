

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';




// class RecordingScreen extends StatefulWidget {
//   const RecordingScreen({super.key});
//
//   @override
//   State<RecordingScreen> createState() => _RecordingScreenState();
// }
//
// class _RecordingScreenState extends State<RecordingScreen> {
//   late CameraController controller;
//
//   @override
//   void initState() {
//     super.initState();
//     controller = CameraController(_cameras[0], ResolutionPreset.max);
//     controller.initialize().then((_) {
//       if (!mounted) {
//         return;
//       }
//       setState(() {});
//     }).catchError((Object e) {
//       if (e is CameraException) {
//         switch (e.code) {
//           case 'CameraAccessDenied':
//             // Handle access errors here.
//             break;
//           default:
//             // Handle other errors here.
//             break;
//         }
//       }
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//           body: Stack(children: [
//         CameraPreview(controller),
//         Padding(
//           padding: const EdgeInsets.only(top: 600, left: 170),
//           child: FloatingActionButton(
//               onPressed: () {
//
//               }, backgroundColor: Colors.red),
//         )
//       ]));
//   }
// }