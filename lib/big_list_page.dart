import 'package:flutter/material.dart';

class BigListPage extends StatefulWidget {
  @override
  _BigListPageState createState() => _BigListPageState();
}

class _BigListPageState extends State<BigListPage> {
  ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      constrained: false,
      child: Column(
        children: List.generate(40, (index) => Container(
          width: 500,
          height: 500,
          color: index % 2 == 0 ? Colors.red : Colors.blue,
        ))
      ),
    );
  }
}
