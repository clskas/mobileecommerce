// import 'package:ecommerceapp/app/components/button_components.dart';
// import 'package:ecommerceapp/app/components/text_components.dart';
//import 'package:ecommerceapp/app/modules/filtre/view/filtre.dart';
import 'package:ecommerceapp/app/modules/panier/view/panier.dart';
// import 'package:ecommerceapp/app/modules/productpage/view/product_page.dart';
// import 'package:ecommerceapp/app/modules/splash/view/splash.dart';
import 'package:ecommerceapp/utils/colors.dart';
//import 'package:ecommerceapp/utils/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: maincolor)),
      //home: Splash(),
    home: Panier(),
    );
  }
}
