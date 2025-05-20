import 'package:ecommerceapp/app/components/text_components.dart';
import 'package:flutter/material.dart';

class CheckoutState extends StatefulWidget {
  const CheckoutState({super.key});

  @override
  State<CheckoutState> createState() => _CheckoutStateState();
}

class _CheckoutStateState extends State<CheckoutState> {
  String? selectedCity;
  String? selectedDistrict;
  final List<String> cities = ['City 1','City 2','City 3'];
  final List<String> districts = ['District 1','District 2','District 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: TextComponents(
          txt: 'Checkout',
          fw: FontWeight.bold,
          family: 'Bold',
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //ProgressBar(stepActuel)
          ],
        ),
      ),
    );
  }
}
