import 'package:ecommerceapp/app/components/button_components.dart';
import 'package:ecommerceapp/app/components/space.dart';
import 'package:ecommerceapp/app/components/text_components.dart';
import 'package:ecommerceapp/app/modules/category/view/category_detail.dart';
import 'package:ecommerceapp/utils/colors.dart';
import 'package:flutter/material.dart';

bool isMan = true;
bool isKids = false;

categoryBox(String productName, BuildContext context, String path) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CategoryDetail(productName: productName,)),
      );
    },
    child: Container(
      margin: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            height: 53,
            width: 53,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(path),fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: maincolor,width: 2)
            ),
          ),
          h(10),
          TextComponents(txt: productName, fw: FontWeight.bold, family: 'Bold'),
        ],
      ),
    ),
  );
}

ProductBox(
  String ProductName,
  ProductReview,
  ProductPriceNormal,
  ProductPricePromo,
) {
  return Card(
    color: Colors.white,
    // ignore: sized_box_for_whitespace
    child: Container(
      height: 350,
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: greyCollor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          ),
          h(20),
          TextComponents(
            txt: ProductName,
            fw: FontWeight.bold,
            family: 'Bold',
            txtSize: 18,
          ),
          h(10),
          // ignore: avoid_unnecessary_containers
          Container(
            margin: EdgeInsets.only(left: 1.8, right: 1.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.deepOrange, size: 15),
                    Icon(Icons.star, color: Colors.deepOrange, size: 15),
                    Icon(Icons.star, color: Colors.deepOrange, size: 15),
                    Icon(Icons.star, color: Colors.deepOrange, size: 15),
                    Icon(Icons.star, color: Color(0xfff2c1a6), size: 15),
                  ],
                ),
                TextComponents(
                  txt: ProductReview,
                  txtSize: 13,
                  fw: FontWeight.bold,
                  family: 'Bold',
                ),
              ],
            ),
          ),
          h(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextComponents(
                txt: ProductPriceNormal,
                fw: FontWeight.bold,
                family: 'Bold',
              ),
              w(8.0),
              Text(
                ProductPricePromo,
                style: TextStyle(
                  fontFamily: "Regular",
                  fontSize: 16,
                  decoration: TextDecoration.lineThrough,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          h(10),
          // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
          Container(
            height: 35,
            margin: EdgeInsets.only(left: 15, right: 15),
            child: ButtonComponent(
              txtButton: 'Add to Card',
              buttonColor: maincolor,
            ),
          ),
        ],
      ),
    ),
  );
}
