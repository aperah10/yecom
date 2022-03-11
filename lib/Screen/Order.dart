import 'package:flutter/material.dart';
import 'package:shop/Elements/baseAppbar.dart';

class OrderScreen extends StatelessWidget {
  OrderScreen({Key? key}) : super(key: key);

  final List<Widget> tabs = [];

  // dynamic Order;

  // dynamic OrderItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // ! Sliver app Bar

          SliverAppBars(
            title: 'Order Screen',
            // bottomChild: Padding(
            //   padding:
            //       const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
            //   child: SearchBox(
            //     controller: searchController,
            //   ),
          ),

          //  ! Sliver Product Content
        ],
      ),
    );
  }
}
