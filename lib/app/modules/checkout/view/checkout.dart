import 'package:ecommerceapp/app/components/text_components.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextComponents(
          txt: 'Checkout',
          fw: FontWeight.bold,
          family: 'Bold',
        ),
        centerTitle: true,
      ),
    );
  }
}
