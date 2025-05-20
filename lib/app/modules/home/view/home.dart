import 'package:ecommerceapp/app/components/button_components.dart';
import 'package:ecommerceapp/app/components/space.dart';
import 'package:ecommerceapp/app/components/text_components.dart';
import 'package:ecommerceapp/app/modules/connexion/view/login.dart';
import 'package:ecommerceapp/app/modules/inscription/view/inscription.dart';
import 'package:ecommerceapp/utils/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: sized_box_for_whitespace
      appBar: AppBar(backgroundColor: homeBg),
      // ignore: sized_box_for_whitespace
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        color: homeBg,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            TextComponents(txt: 'Welcome', txtSize: 35, fw: FontWeight.bold,family: 'Bold',),
            TextComponents(txt: 'ManMode Shopping House', txtSize: 18),
            h(40),
            Image.asset('assets/images/home.png'),
            h(20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Inscription()),
                );
              },
              child: ButtonComponent(
                txtButton: 'Sign Up',
                buttonColor: maincolor,
              ),
            ),
            h(20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: ButtonComponent(
                txtButton: 'Login',
                buttonColor: Colors.black,
              ),
            ),
            h(30),
            TextComponents(txt: 'Not Thanks'),
          ],
        ),
      ),
    );
  }
}
