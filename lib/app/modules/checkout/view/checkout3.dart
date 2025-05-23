import 'package:ecommerceapp/app/components/text_components.dart';
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
    );
  }
}