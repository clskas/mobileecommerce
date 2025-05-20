import 'package:ecommerceapp/app/components/button_components.dart';
import 'package:ecommerceapp/app/components/space.dart';
import 'package:ecommerceapp/app/components/text_components.dart';
// import 'package:ecommerceapp/app/modules/productpage/controller/controller_product.dart';
import 'package:ecommerceapp/utils/colors.dart';
import 'package:flutter/material.dart';

class Filtre extends StatefulWidget {
  const Filtre({super.key});

  @override
  State<Filtre> createState() => _FiltreState();
}

class _FiltreState extends State<Filtre> {
  bool all = true;
  bool nike = false;
  bool bata = false;
  bool adidas = false;

  bool allgender = true;
  bool mengender = false;
  bool kidsgenger = false;

  bool allsize = true;
  bool size1 = false;
  bool size2 = false;

  final List<String> categories = [
    "T-Shirt",
    "Jeans",
    "Shoes",
    "Panjabi",
    "Watch",
  ];
  String selectedvalue = 'T-Shirt';

  double valeurActuelle = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: TextComponents(
          txt: 'Filter',
          fw: FontWeight.bold,
          family: 'Bold',
          txtSize: 19,
        ),
        actions: [Icon(Icons.delete), w(20)],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextComponents(
              txt: 'Brands',
              fw: FontWeight.bold,
              family: 'Bold',
              txtSize: 16,
            ),
            h(20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            all = true;
                            nike = bata = adidas = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: 40,
                          decoration: BoxDecoration(
                            color: all ? maincolor : Colors.white,
                            border: Border.all(color: maincolor),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: TextComponents(
                              txt: 'All',
                              color: all ? Colors.white : Colors.black,
                              fw: FontWeight.bold,
                              family: 'Bold',
                            ),
                          ),
                        ),
                      ),
                      w(4),
                      InkWell(
                        onTap: () {
                          setState(() {
                            nike = true;
                            all = bata = adidas = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: 40,
                          decoration: BoxDecoration(
                            color: nike ? maincolor : Colors.white,
                            border: Border.all(color: maincolor),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: TextComponents(
                              txt: 'Nike',
                              color: nike ? Colors.white : Colors.black,
                              fw: FontWeight.bold,
                              family: 'Bold',
                            ),
                          ),
                        ),
                      ),
                      w(4),
                      InkWell(
                        onTap: () {
                          setState(() {
                            bata = true;
                            nike = all = adidas = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: 40,
                          decoration: BoxDecoration(
                            color: bata ? maincolor : Colors.white,
                            border: Border.all(color: maincolor),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: TextComponents(
                              txt: 'Bata',
                              color: bata ? Colors.white : Colors.black,
                              fw: FontWeight.bold,
                              family: 'Bold',
                            ),
                          ),
                        ),
                      ),
                      w(4),
                      InkWell(
                        onTap: () {
                          setState(() {
                            adidas = true;
                            nike = bata = all = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          height: 40,
                          decoration: BoxDecoration(
                            color: adidas ? maincolor : Colors.white,
                            border: Border.all(color: maincolor),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: TextComponents(
                              txt: 'Adidas',
                              color: adidas ? Colors.white : Colors.black,
                              fw: FontWeight.bold,
                              family: 'Bold',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            h(20),
            TextComponents(
              txt: 'Gender',
              fw: FontWeight.bold,
              family: 'Bold',
              txtSize: 16,
            ),
            h(20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            allgender = true;
                            mengender = kidsgenger = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: 40,
                          decoration: BoxDecoration(
                            color: allgender ? maincolor : Colors.white,
                            border: Border.all(color: maincolor),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: TextComponents(
                              txt: 'All',
                              color: allgender ? Colors.white : Colors.black,
                              fw: FontWeight.bold,
                              family: 'Bold',
                            ),
                          ),
                        ),
                      ),
                      w(4),
                      InkWell(
                        onTap: () {
                          setState(() {
                            mengender = true;
                            allgender = kidsgenger = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: 40,
                          decoration: BoxDecoration(
                            color: mengender ? maincolor : Colors.white,
                            border: Border.all(color: maincolor),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: TextComponents(
                              txt: 'Men',
                              color: mengender ? Colors.white : Colors.black,
                              fw: FontWeight.bold,
                              family: 'Bold',
                            ),
                          ),
                        ),
                      ),
                      w(4),
                      InkWell(
                        onTap: () {
                          setState(() {
                            kidsgenger = true;
                            mengender = allgender = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: 40,
                          decoration: BoxDecoration(
                            color: kidsgenger ? maincolor : Colors.white,
                            border: Border.all(color: maincolor),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: TextComponents(
                              txt: 'Kids',
                              color: kidsgenger ? Colors.white : Colors.black,
                              fw: FontWeight.bold,
                              family: 'Bold',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            h(20),
            TextComponents(
              txt: 'Select Product',
              fw: FontWeight.bold,
              family: 'Bold',
            ),

            h(10),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38),
                borderRadius: BorderRadius.circular(20),
              ),
              child: DropdownButton(
                value: selectedvalue,
                borderRadius: BorderRadius.circular(20),
                isExpanded: true,
                items:
                    categories.map((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedvalue = value!;
                  });
                },
              ),
            ),
            h(20),
            TextComponents(
              txt: 'Select Product',
              fw: FontWeight.bold,
              family: 'Bold',
            ),
            h(20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            allsize = true;
                            size1 = size2 = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: 40,
                          decoration: BoxDecoration(
                            color: allsize ? maincolor : Colors.white,
                            border: Border.all(color: maincolor),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: TextComponents(
                              txt: 'All',
                              color: allsize ? Colors.white : Colors.black,
                              fw: FontWeight.bold,
                              family: 'Bold',
                            ),
                          ),
                        ),
                      ),
                      w(4),
                      InkWell(
                        onTap: () {
                          setState(() {
                            size1 = true;
                            allsize = size2 = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: 40,
                          decoration: BoxDecoration(
                            color: size1 ? maincolor : Colors.white,
                            border: Border.all(color: maincolor),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: TextComponents(
                              txt: 'Size 1',
                              color: size1 ? Colors.white : Colors.black,
                              fw: FontWeight.bold,
                              family: 'Bold',
                            ),
                          ),
                        ),
                      ),
                      w(4),
                      InkWell(
                        onTap: () {
                          setState(() {
                            size2 = true;
                            allsize = size1 = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: 40,
                          decoration: BoxDecoration(
                            color: size2 ? maincolor : Colors.white,
                            border: Border.all(color: maincolor),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: TextComponents(
                              txt: 'Size 2',
                              color: size2 ? Colors.white : Colors.black,
                              fw: FontWeight.bold,
                              family: 'Bold',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            h(20),
            TextComponents(txt: 'Price', fw: FontWeight.bold, family: 'Bold'),
            Slider(
              min: 0,
              max: 100,
              divisions: 2,
              label: valeurActuelle.round().toString(),

              value: valeurActuelle,
              onChanged: (value) {
                setState(() {
                  valeurActuelle = value;
                });
              },
            ),
            h(20),
            TextComponents(
              txt: 'Select Color',
              fw: FontWeight.bold,
              family: 'Bold',
            ),
            h(10),
            Row(
              children: [
                CircleAvatar(backgroundColor: Colors.brown, radius: 15),
                w(20),
                CircleAvatar(backgroundColor: Colors.grey, radius: 15),
                w(20),
                CircleAvatar(backgroundColor: Colors.blue, radius: 15),
                w(20),
                CircleAvatar(backgroundColor: Colors.green, radius: 15),
                w(20),
                CircleAvatar(backgroundColor: Colors.orange, radius: 15),
                w(20),
                CircleAvatar(backgroundColor: Colors.red, radius: 15),
              ],
            ),
            h(20),
            ButtonComponent(txtButton: 'Filter now', buttonColor: maincolor),
          ],
        ),
      ),
    );
  }
}
