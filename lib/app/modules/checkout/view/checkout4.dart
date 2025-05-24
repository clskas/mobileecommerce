import 'package:ecommerceapp/app/components/button_components.dart';
import 'package:ecommerceapp/app/components/space.dart';
import 'package:ecommerceapp/app/components/text_components.dart';
import 'package:ecommerceapp/app/modules/checkout/controller/controller_checkout.dart';
import 'package:ecommerceapp/app/modules/checkout/view/payment_status.dart';
import 'package:ecommerceapp/utils/colors.dart';
import 'package:flutter/material.dart';

class Checkout4 extends StatefulWidget {
  const Checkout4({super.key});

  @override
  State<Checkout4> createState() => _Checkout4State();
}

class _Checkout4State extends State<Checkout4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: TextComponents(
          txt: 'Paymenent',
          fw: FontWeight.bold,
          family: 'Bold',
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            h(30),
            ProgressBar(stepActuel: 4),
            h(20),
            TextComponents(
              txt: 'Nagad',
              fw: FontWeight.bold,
              family: 'Bold',
              txtSize: 18,
            ),
            h(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextComponents(
                  txt: 'Main amount',
                  fw: FontWeight.bold,
                  family: 'Bold',
                ),
                TextComponents(txt: '2500 Tk'),
              ],
            ),
            h(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextComponents(
                  txt: 'Processing Fees',
                  fw: FontWeight.bold,
                  family: 'Bold',
                ),
                TextComponents(txt: '120 Tk'),
              ],
            ),
            h(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextComponents(
                  txt: 'Total amount',
                  fw: FontWeight.bold,
                  family: 'Bold',
                ),
                TextComponents(txt: '2620 Tk'),
              ],
            ),
            h(30),
            Divider(),
            h(30),
            Center(
              child: TextComponents(
                txt: 'Your Nagad account number',
                fw: FontWeight.bold,
                txtSize: 18,
              ),
            ),
            h(20),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
            ),
            h(100),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentStatus()),
                );
              },
              child: ButtonComponent(
                txtButton: 'Confirm',
                buttonColor: maincolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
