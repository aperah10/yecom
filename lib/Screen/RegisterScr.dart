import 'package:flutter/material.dart';

import 'package:shop/Elements/button.dart';
import 'package:shop/Elements/formfield.dart';
import 'package:shop/utils/common.dart';
import 'package:shop/utils/style.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final TextEditingController prodNameController = TextEditingController();
  final TextEditingController QuantityController = TextEditingController();
  final TextEditingController mrpPriceController = TextEditingController();
  final TextEditingController offerPriceController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  List helpVal = ['Question 1', 'Question 2', 'Question 3', 'Question 4'];
  List prodList = [
    'assets/images/pulse.png',
    'assets/images/onion.png',
    // 'assets/images/snacks.png',
    'assets/images/potato.png',
    'assets/images/pulse.png',
    'assets/images/watermelon.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: ListView(
          children: [
            EditTextField(
              textAlign: TextAlign.left,
              txtColor: txtBlackColor,
              headTxt: 'Product Name',
              // fillColor: borderColor,
              hintText: 'Enter product name',
              controller: prodNameController,
              vertical: 15,
            ),

            // Container(
            //   child: DropDownBtn(
            //     vertical: 12,
            //     labelText: 'Select Quantity',
            //     listData: helpVal,
            //     fillColor: borderColor,
            //     pageName: 'Select Quantity',
            //     listController: QuantityController,
            //   ),
            // ),
            EditTextField(
              vertical: 15,
              textAlign: TextAlign.left,
              txtColor: txtBlackColor,
              headTxt: 'MRP',
              // fillColor: borderColor,
              hintText: 'Enter MRP Price',
              controller: mrpPriceController,
            ),
            EditTextField(
              vertical: 15,
              textAlign: TextAlign.left,
              txtColor: txtBlackColor,
              headTxt: 'Offer Price',
              // fillColor: borderColor,
              hintText: 'Enter Offer Price',
              controller: offerPriceController,
            ),
            heightSizedBox(10.0),
            Text(
              'Upload Photo',
              style: labelTextStyle,
            ),
            // UpdImgFile(
            //   imgSrc1: 'assets/images/pulse.png',
            //   imgSrc2: 'assets/images/onion.png',
            //   imgSrc3: 'assets/images/potato.png',
            // ),
            heightSizedBox(5.0),
            EditTextField(
              // hoverColor: borderColor,
              textAlign: TextAlign.left,
              txtColor: txtBlackColor,
              headTxt: 'Write Description',
              // fillColor: borderColor,
              hintText: 'Enter Description',
              maxLines: 5,
              controller: descriptionController,
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Btn(
          // alignment: Alignment.bottomLeft,
          height: 45,
          width: 100,
          btnName: 'Submit',
          txtColor: txtWhiteColor,
          color: coffeColor,
          // onTap: () => navigationPush(context, OrderDeatilsScreen()),
        ),
      ),
    );
  }
}
