import 'package:flutter/material.dart';

import 'package:flutter_disenos/widgets/background.dart';
import 'package:flutter_disenos/widgets/page_title.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          _HomeBody()
        ],
      )
   );
  }
}

class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle()
        ],
      ),
    );
  }
}