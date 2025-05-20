import 'package:ecommerceapp/app/components/text_components.dart';
import 'package:ecommerceapp/app/modules/splash/controller/controller.dart';
// import 'package:ecommerceapp/utils/colors.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    time(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        // ignore: sized_box_for_whitespace
        child: Container(
          height: 240,
          width: 200,
          child: Column(
            children: [
              Image.asset('assets/images/logo.png', scale: 1.2),
              TextComponents(txt: 'ManMode', txtSize: 30, fw: FontWeight.bold),
              TextComponents(txt: 'Fashio House', txtSize: 20),
            ],
          ),
        ),
      ),
    );
  }
}
