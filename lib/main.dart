import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Allproveder.dart';
import 'Screen/splashScr.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  // HttpOverrides.global = new MyHttpOverrides();
  //  ! 2nd method
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
        // MaterialApp(
        //   title: 'Sliver Plated',
        //   theme: ThemeData(
        //     primarySwatch: Colors.blue,
        //   ),
        //   debugShowCheckedModeBanner: false,
        //   // home: AddressScreen(),
        //   home: SplashScreen(),
        // );

        MultiProvider(
      providers: MainBloc.allBlocs(),
      child: MaterialApp(
        theme: ThemeData(
            // primaryColor: redColor,
            // appBarTheme: const AppBarTheme(color: redColor)
            ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
