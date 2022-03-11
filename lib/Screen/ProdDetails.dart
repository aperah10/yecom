import 'package:flutter/material.dart';
import 'package:shop/Elements/baseAppbar.dart';

class ProdcutDeatilsScreen extends StatelessWidget {
  ProdcutDeatilsScreen({Key? key}) : super(key: key);

  final List<Widget> tabs = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Product Details',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
