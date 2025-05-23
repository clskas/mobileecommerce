import 'package:ecommerceapp/app/components/button_components.dart';
import 'package:ecommerceapp/app/components/space.dart';
import 'package:ecommerceapp/app/components/text_components.dart';
import 'package:ecommerceapp/app/modules/checkout/controller/controller_checkout.dart';
import 'package:ecommerceapp/app/modules/checkout/view/checkout3.dart';
import 'package:ecommerceapp/utils/colors.dart';
import 'package:flutter/material.dart';

class CheckoutState extends StatefulWidget {
  const CheckoutState({super.key});

  @override
  State<CheckoutState> createState() => _CheckoutStateState();
}

class _CheckoutStateState extends State<CheckoutState> {
  String? selectedPaymentMethod;

  final List<String> methodPayment = [
    'Bank Transfers',
    'Mobile Banking',
    'Card',
    'Payonner',
    'Amazone Hub Counter',
    'Apple Pay',
    'Google Pay',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: TextComponents(
          txt: 'Checkout 2',
          fw: FontWeight.bold,
          family: 'Bold',
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ProgressBar(stepActuel: 2),
            h(20),
            TextComponents(
              txt: 'Select Payment Methods',
              fw: FontWeight.bold,
              family: "Bold",
              txtSize: 18,
            ),
            h(30),
            // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(color: Colors.black12),
              ),
              height: 400,
              child: ListView.builder(
                itemCount: methodPayment.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        title: TextComponents(txt: methodPayment[index]),
                        leading: Container(
                          height: 40,
                          width: 40,
                          color: Colors.grey,
                        ),
                        trailing: Radio(
                          value: methodPayment[index],
                          groupValue: selectedPaymentMethod,
                          onChanged: (value) {
                            setState(() {
                              selectedPaymentMethod = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.black,
                      ),
                    ],
                  );
                },
              ),
            ),
            h(40),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Checkout3()),
                );
              },
              child: ButtonComponent(txtButton: 'Next', buttonColor: maincolor),
            ),
          ],
        ),
      ),
    );
  }
}
