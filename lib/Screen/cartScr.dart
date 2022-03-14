import 'package:flutter/material.dart';
import 'package:shop/Elements/baseAppbar.dart';
import 'package:shop/Elements/button.dart';
import 'package:shop/utils/common.dart';
import 'package:shop/utils/style.dart';

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
          ),

          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (BuildContext context, int i) => CartProdContent(
          //       prodNumber: i,
          //       // plusCallBack: plusCallBack,
          //       // minusCallBack: minusCallBack,
          //       // price: price,
          //       // fullPrice: fullPrice,
          //       // quantity: quantity,
          //     ),
          //     childCount: 5, // 1000 list items
          //   ),
          // ),

          //  ! Sliver Product Content
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Btn(
          // alignment: Alignment.bottomLeft,
          height: 45,
          width: double.infinity,
          btnName: 'PROCEED TO PAYMENT',
          txtColor: txtWhiteColor,
          color: coffeColor,
          // onTap: () => navigationPush(context, OrderDeatilsScreen()),
        ),
      ),
    );
  }
}
