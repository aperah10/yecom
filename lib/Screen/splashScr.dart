import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shop/Elements/imgScr.dart';
import 'package:shop/Screen/HomeScr.dart';
import 'package:shop/Screen/bottomNav.dart';
import 'package:shop/utils/common.dart';
import 'package:shop/utils/shared_helper.dart';
import 'package:shop/utils/style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // void initState() {
  //   super.initState();
  //   Timer(
  //       Duration(seconds: 3),
  //       () =>
  //           // navigationPush(context, HomeScreen())
  //           navigationPush(
  //               context,
  //               UserNavigationBar(
  //                 currentTab: 0,
  //               )));
  // }

  SharedHelper sharedHelper = SharedHelper();

  @override
  void initState() {
    // SharedHelper().remove('current_user');
    checkLogin();
    super.initState();
  }

  checkLogin() async {
    bool isLogin = await sharedHelper.containsKey('current_user');
    print('splash Login $isLogin');
    if (isLogin) {
      // currentUser.value = await getCurrentUser();
      // print(currentUser.value.token);
      print('splash Login $isLogin');
      navigationRemoveUntil(
          context,
          UserNavigationBar(
            currentTab: 2,
          ));
      // repo.getScreen(context).then((value) => {
      //       if (value != null)
      //         {
      //           if (value['screen'] == 1)
      //             {}
      //           // navigationRemoveUntil(context, DashBoard(currentTab: 1))
      //           else
      //             {}
      //           // navigationRemoveUntil(context, SellerVerifyFromProfile())
      //         }
      //       else
      //         {
      //           sharedHelper.remove('current_user'),
      //           // navigationRemoveUntil(context, OnBoarding()),
      //         }
      //     });
    } else
      Timer(
          Duration(seconds: 2),
          () => navigationRemoveUntil(
              context,
              UserNavigationBar(
                currentTab: 0,
              )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Pics(
              src: 'assets/images/god-idols.png',
              height: 150,
              width: 150,
            ),
            Text(
              'Gold Gift Ideas',
              style: labelTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
