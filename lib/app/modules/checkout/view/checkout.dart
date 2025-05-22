import 'package:ecommerceapp/app/components/form_components.dart';
import 'package:ecommerceapp/app/components/space.dart';
import 'package:ecommerceapp/app/components/text_components.dart';
import 'package:ecommerceapp/app/modules/checkout/controller/controller_checkout.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  List<String> cities = ['City 1', 'City 2', 'City 3'];
  String selectedCity = "";

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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProgressBar(stepActuel: 1),
            h(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextComponents(
                  txt: "Shipping Adress",
                  fw: FontWeight.bold,
                  family: 'Bold',
                ),
              ],
            ),
            h(30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextComponents(txt: 'Name', fw: FontWeight.bold),
                h(10),
                FormComponents(),
                h(50),
                TextComponents(txt: 'Town/City', fw: FontWeight.bold),
                h(10),
                // ignore: avoid_unnecessary_containers
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: DropdownButton(
                    
                    isExpanded: true,
                    hint: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextComponents(
                        txt: 'Cliquez ici pour selectionner',
                        color: Colors.grey,
                        fw: FontWeight.bold,
                      ),
                    ),
                    items:
                        cities.map<DropdownMenuItem<String>>((String valeur) {
                          return DropdownMenuItem<String>(
                            value: valeur,
                            child: TextComponents(txt: valeur),
                          );
                        }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedCity = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
