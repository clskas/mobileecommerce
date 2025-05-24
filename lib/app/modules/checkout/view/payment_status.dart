import 'package:ecommerceapp/app/components/button_components.dart';
import 'package:ecommerceapp/app/components/space.dart';
import 'package:ecommerceapp/app/components/text_components.dart';
import 'package:ecommerceapp/app/modules/productpage/view/product_page.dart';
import 'package:ecommerceapp/utils/colors.dart';
import 'package:flutter/material.dart';

class PaymentStatus extends StatefulWidget {
  const PaymentStatus({super.key});

  @override
  State<PaymentStatus> createState() => _PaymentStatusState();
}

class _PaymentStatusState extends State<PaymentStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: TextComponents(
          txt: 'Paymenent Status',
          fw: FontWeight.bold,
          family: 'Bold',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Icon(Icons.check, size: 80, color: Colors.white),
              ),
            ),
            h(30),
            TextComponents(
              txt: 'Payment Successful',
              txtSize: 24,
              fw: FontWeight.bold,
            ),
            h(10),
            TextComponents(txt: 'Thank you for your purchasse', txtSize: 18),
            h(40),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductPage()),
                  );
                },
                child: ButtonComponent(
                  txtButton: 'Back to home',
                  buttonColor: maincolor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
