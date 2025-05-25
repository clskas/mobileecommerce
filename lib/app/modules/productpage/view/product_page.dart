import 'package:ecommerceapp/app/components/space.dart';
import 'package:ecommerceapp/app/components/text_components.dart';
import 'package:ecommerceapp/app/modules/account/view/account.dart';
import 'package:ecommerceapp/app/modules/filtre/view/filtre.dart';
import 'package:ecommerceapp/app/modules/panier/view/panier.dart';
import 'package:ecommerceapp/app/modules/productpage/controller/controller_product.dart';
import 'package:ecommerceapp/utils/colors.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        toolbarHeight: 30,
      ),
      // ignore: sized_box_for_whitespace
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 10.0),
        child: Column(
          children: [
            // ignore: sized_box_for_whitespace
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                  height: 60,
                  decoration: BoxDecoration(
                    color: greyCollor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  width: MediaQuery.of(context).size.width / 1.4,
                  child: TextFormField(
                    controller: searchController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search, size: 30),
                      hintText: 'Search your product',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Bold',
                        fontWeight: FontWeight.bold,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Panier()),
                    );
                  },
                  child: CircleAvatar(
                    backgroundColor: greyCollor,
                    radius: 20,
                    child: Center(
                      child: Icon(Icons.shopping_bag_outlined, size: 30),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Account()),
                    );
                  },
                  child: CircleAvatar(
                    backgroundColor: greyCollor,
                    radius: 20,
                    child: Center(child: Icon(Icons.person, size: 30)),
                  ),
                ),
              ],
            ),
            h(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          isMan = true;
                          isKids = false;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        height: 40,
                        decoration: BoxDecoration(
                          color: isMan ? maincolor : Colors.white,
                          border: Border.all(color: maincolor),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: TextComponents(
                            txt: 'Man',
                            color: isMan ? Colors.white : Colors.black,
                            fw: FontWeight.bold,
                            family: 'Bold',
                          ),
                        ),
                      ),
                    ),
                    w(20),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isMan = false;
                          isKids = true;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        height: 40,
                        decoration: BoxDecoration(
                          color: isKids ? maincolor : Colors.white,
                          border: Border.all(color: maincolor),
                          borderRadius: BorderRadius.circular(100),
                        ),

                        child: Center(
                          child: TextComponents(
                            txt: 'Kids',
                            color: isKids ? Colors.white : Colors.black,
                            fw: FontWeight.bold,
                            family: 'Bold',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Filtre()),
                    );
                  },
                  child: Icon(Icons.menu, size: 30),
                ),
              ],
            ),
            h(30),
            // ignore: sized_box_for_whitespace
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: greyCollor2,
              ),
            ),
            h(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextComponents(
                  txt: 'Categories',
                  fw: FontWeight.bold,
                  family: 'Bold',
                  txtSize: 17,
                ),
                TextComponents(
                  txt: 'See all',
                  fw: FontWeight.bold,
                  family: 'Bold',
                  color: maincolor,
                  txtSize: 17,
                ),
              ],
            ),
            h(20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  categoryBox('T-Shirt', context, "assets/images/tshirt.png"),
                  categoryBox('Jeans', context, "assets/images/jeans.png"),
                  categoryBox('Shoes', context, "assets/images/shoes.png"),
                  categoryBox('Robe', context, "assets/images/robe.png"),
                  categoryBox('Baby', context, "assets/images/baby.png"),
                ],
              ),
            ),
            h(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextComponents(
                  txt: 'All products',
                  family: 'Bold',
                  fw: FontWeight.bold,
                ),
              ],
            ),
            h(20),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: List.generate(6, (index) {
                // ignore: sized_box_for_whitespace
                return Container(
                  width: (MediaQuery.of(context).size.width / 2) - 20,
                  child: ProductBox(
                    'Panjabi',
                    '13 Reviews',
                    'TK 1500',
                    'TK 1900',
                    context,
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
