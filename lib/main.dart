import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:princeton_hive/presentation/layouts/journey_page.dart';
import 'package:princeton_hive/utils/route_generator.dart';

late List<CameraDescription> _cameras;
Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();

  _cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home: const JourneyPage(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}


// Recording screen code written here due to global variable issues
class RecordingScreen extends StatefulWidget {
  const RecordingScreen({super.key});

  @override
  State<RecordingScreen> createState() => _RecordingScreenState();
}

class _RecordingScreenState extends State<RecordingScreen> {
  late CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(_cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            // Handle access errors here.
            break;
          default:
            // Handle other errors here.
            break;
        }
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Stack(children: [
        CameraPreview(controller),
        Padding(
          padding: const EdgeInsets.only(top: 600, left: 170),
          child: FloatingActionButton(
              onPressed: () {
                
              }, backgroundColor: Colors.red),
        )
      ]));
  }
}