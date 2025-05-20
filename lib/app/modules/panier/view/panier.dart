import 'package:ecommerceapp/app/components/button_components.dart';
import 'package:ecommerceapp/app/components/space.dart';
import 'package:ecommerceapp/app/components/text_components.dart';
import 'package:ecommerceapp/app/modules/checkout/view/checkout.dart';
import 'package:ecommerceapp/app/modules/panier/controller/controller_panier.dart';
import 'package:ecommerceapp/utils/colors.dart';
import 'package:flutter/material.dart';

class Panier extends StatefulWidget {
  const Panier({super.key});

  @override
  State<Panier> createState() => _PanierState();
}

class _PanierState extends State<Panier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Stack(
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: homeBg,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(Icons.shopping_cart, size: 30),
              ),
              Positioned(
                right: 2,
                top: 0,
                // ignore: sized_box_for_whitespace
                child: Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: TextComponents(
                      txt: '3',
                      txtSize: 13,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
        ],
        backgroundColor: Colors.white,
        title: TextComponents(
          txt: 'My Cart',
          fw: FontWeight.bold,
          family: 'Bold',
          txtSize: 18,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            customProductBox(
              "Man's T-Shirt",
              "Classic crew neck design",
              "Tk 600",
            ),
            customProductBox(
              "Man's jeans",
              "Classic crew neck design",
              "Tk 800",
            ),
            customProductBox(
              "Kids Shoes",
              "Classic crew neck design",
              "Tk 900",
            ),
            h(50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextComponents(
                  txt: "Sub Total :",
                  fw: FontWeight.bold,
                  family: "Bold",
                ),
                TextComponents(
                  txt: "Tk 2600",
                  fw: FontWeight.bold,
                  family: "Bold",
                ),
              ],
            ),
            h(10),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Checkout()),
                );
              },
              child: ButtonComponent(
                txtButton: 'Checkout',
                buttonColor: maincolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
