import 'package:ecommerceapp/app/components/button_components.dart';
import 'package:ecommerceapp/app/components/space.dart';
import 'package:ecommerceapp/app/components/text_components.dart';
import 'package:ecommerceapp/app/modules/checkout/controller/controller_checkout.dart';
import 'package:ecommerceapp/app/modules/checkout/view/checkout4.dart';
import 'package:ecommerceapp/utils/colors.dart';
import 'package:flutter/material.dart';

class Checkout3 extends StatefulWidget {
  const Checkout3({super.key});

  @override
  State<Checkout3> createState() => _Checkout3State();
}

class _Checkout3State extends State<Checkout3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: TextComponents(
          txt: 'Checkout 3',
          fw: FontWeight.bold,
          family: 'Bold',
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ProgressBar(stepActuel: 3),
            h(20),
            TextComponents(
              txt: 'Mobile Banking',
              fw: FontWeight.bold,
              family: 'Bold',
              txtSize: 18,
            ),
            h(40),
            // ignore: sized_box_for_whitespace
            Container(
              height: 300,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: homeBg,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  );
                },
              ),
            ),
            h(130),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Checkout4()),
                );
              },
              child: ButtonComponent(txtButton: "Next", buttonColor: maincolor),
            ),
          ],
        ),
      ),
    );
  }
}
