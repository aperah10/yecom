import 'package:flutter/material.dart';
import 'package:shop/Elements/baseAppbar.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);

  final List<Widget> tabs = [];

  // dynamic cart;

  // dynamic cartItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // ! Sliver app Bar

          SliverAppBars(
            title: 'Cart Screen',
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
