import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'package:netflix_clone/screen/screens.dart';

void main() {
  runApp( DevicePreview(
    enabled: true,
    builder: (context) =>  const MyApp(),
  ), );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Netflix UI',
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const NavScreen(),
    );
  }
}
