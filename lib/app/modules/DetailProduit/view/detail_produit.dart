import 'package:ecommerceapp/app/components/button_components.dart';
import 'package:ecommerceapp/app/components/space.dart';
import 'package:ecommerceapp/app/components/text_components.dart';
import 'package:ecommerceapp/app/modules/productpage/controller/controller_product.dart';
import 'package:ecommerceapp/utils/colors.dart';
import 'package:flutter/material.dart';

class DetailProduit extends StatefulWidget {
  const DetailProduit({super.key});

  @override
  State<DetailProduit> createState() => _DetailProduitState();
}

class _DetailProduitState extends State<DetailProduit> {
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
          txt: 'Detail Produit',
          fw: FontWeight.bold,
          family: 'Bold',
          txtSize: 18,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            h(20),
            Row(
              children: [
                Icon(Icons.star, color: Colors.deepOrange),
                Icon(Icons.star, color: Colors.deepOrange),
                Icon(Icons.star, color: Colors.deepOrange),
                Icon(Icons.star, color: Colors.deepOrange),
                Icon(Icons.star, color: Colors.deepOrange),
                w(10),
                TextComponents(txt: '( 20 Reviews )'),
              ],
            ),
            h(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextComponents(
                  txt: "Man's T-Shirt",
                  fw: FontWeight.bold,
                  txtSize: 20,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      child: Icon(Icons.favorite_border_rounded, size: 18),
                    ),
                    w(10),
                    CircleAvatar(
                      radius: 15,
                      child: Icon(Icons.share, size: 18),
                    ),
                  ],
                ),
              ],
            ),
            h(15),
            TextComponents(
              txt:
                  'Lorem ispum dolor sit amet, concest Lorem ispum dolor sit amet, concest Lorem ispum dolor sit amet, concest Lorem ispum dolor sit amet, concest',
            ),
            h(10),
            Row(
              children: [
                Text(
                  'Tk 900',
                  style: TextStyle(
                    fontSize: 17.0,
                    decoration: TextDecoration.lineThrough,
                    fontFamily: "Regular",
                    color: Colors.grey,
                  ),
                ),
                w(10),
                TextComponents(
                  txt: "Tk 600",
                  fw: FontWeight.bold,
                  family: 'Bold',
                  txtSize: 20,
                ),
              ],
            ),
            h(10),
            Divider(),
            h(20),
            TextComponents(txt: "Select Size", family: 'Bold', txtSize: 17),
            h(15),
            Row(
              children: [
                Container(
                  height: 35,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Center(child: TextComponents(txt: 'S')),
                ),
                Container(
                  height: 35,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Center(child: TextComponents(txt: 'M')),
                ),
                Container(
                  height: 35,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Center(child: TextComponents(txt: 'L')),
                ),
                Container(
                  height: 35,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Center(child: TextComponents(txt: 'XL')),
                ),
                Container(
                  height: 35,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Center(child: TextComponents(txt: 'XXL')),
                ),
                Container(
                  height: 35,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Center(child: TextComponents(txt: 'XXXL')),
                ),
              ],
            ),
            h(20),
            TextComponents(
              txt: 'Select color',
              fw: FontWeight.bold,
              txtSize: 17,
            ),
            DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  TabBar(
                    tabs: [
                      Tab(text: "Description"),
                      Tab(text: "Review"),
                      Tab(text: "Return Policy"),
                    ],
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 400,
                    child: TabBarView(
                      children: [
                        Center(
                          child: TextComponents(
                            txt:
                                ' Contenu de la tab description Lorem ipsu Lorem ipsu Lorem ipsu Lorem ipsu Lorem ipsu Lorem ipsu Lorem ipsu Lorem ipsuLorem ipsu Lorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsu',
                          ),
                        ),
                        Center(
                          child: TextComponents(
                            txt:
                                'Contenu de la tab review Lorem ipsu Lorem ipsu Lorem ipsu Lorem ipsu Lorem ipsu Lorem ipsu Lorem ipsu Lorem ipsuLorem ipsu Lorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsu',
                          ),
                        ),
                        Center(
                          child: TextComponents(
                            txt:
                                'Contenu de la tab return policy Lorem ipsu Lorem ipsu Lorem ipsu Lorem ipsu Lorem ipsu Lorem ipsu Lorem ipsu Lorem ipsuLorem ipsu Lorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsu',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ButtonComponent(txtButton: 'Add to cart', buttonColor: maincolor),
            h(20),
            TextComponents(
              txt: 'You may also like',
              fw: FontWeight.bold,
              txtSize: 17,
            ),
            h(20),
            Column(
              children: [
                ProductBox("T-Shirt", "12 reviews", "900", "500", context),
                ProductBox("T-Shirt", "12 reviews", "900", "500", context),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
