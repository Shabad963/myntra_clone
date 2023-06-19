import 'package:flutter/material.dart';
import 'package:myntra_clone/provider/video_provider.dart';
import 'package:myntra_clone/views/studio_view.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
       create: (_) => VideoPlayerState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Myntra clone',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  StudioView(),
      ),
    );
  }
}



