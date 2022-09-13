import 'package:flutter/material.dart';

import '../widgets/widgets.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.grey[850],
        child: const Icon(
          Icons.cast,
        ),
      ),
      appBar: PreferredSize(preferredSize: Size(screenSize.width, 50.0,),
      child: const CustomAppBar(),
      ),
    );
  }
}
