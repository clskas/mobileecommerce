import 'package:ecommerceapp/app/components/button_components.dart';
import 'package:ecommerceapp/app/components/space.dart';
import 'package:ecommerceapp/app/components/text_components.dart';
import 'package:ecommerceapp/app/modules/productpage/view/product_page.dart';
import 'package:ecommerceapp/utils/colors.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      // ignore: sized_box_for_whitespace
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextComponents(
              txt: 'Lets get starded with shopping !',
              fw: FontWeight.bold,
              family: 'Bold',
              txtSize: 28,
              textAlign: TextAlign.center,
            ),
            h(20),
            TextComponents(
              txt: 'Find it here, buy it now !',
              txtSize: 19,
              textAlign: TextAlign.center,
            ),
            h(40),
            Image.asset('assets/images/welcom.png'),
            h(20),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ProductPage()),
                );
              },
              child: ButtonComponent(
                txtButton: 'Get started',
                buttonColor: maincolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
