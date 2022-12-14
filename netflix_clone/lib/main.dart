import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:provider/provider.dart';

import 'package:netflix_clone/provider/appbar_provider.dart';
import 'package:netflix_clone/screen/screens.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppBarProvider>(
      create: (BuildContext context) => AppBarProvider(),
      child: MaterialApp(
        title: 'Flutter Netflix UI',
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Colors.black,
        ),
        home: const NavScreen(),
      ),
    );
  }
}
