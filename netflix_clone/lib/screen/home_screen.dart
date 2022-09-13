import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _scrollOffset = 0.0;
  late ScrollController _scrollController;
  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(
        () {
          setState(() {
            _scrollOffset = _scrollController.offset;
          });
        },
      );
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('cast');
        },
        backgroundColor: Colors.grey[850],
        child: const Icon(
          Icons.cast,
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size(
          screenSize.width,
          50.0,
        ),
        child: CustomAppBar(
          scrollOffset: _scrollOffset,
        ),
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 1000,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
