import 'package:ecommerceapp/app/components/text_components.dart';
import 'package:ecommerceapp/app/modules/productpage/controller/controller_product.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryDetail extends StatefulWidget {
  String productName;

  CategoryDetail({super.key, required this.productName});

  @override
  State<CategoryDetail> createState() => _CategoryDetailState();
}

class _CategoryDetailState extends State<CategoryDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: TextComponents(
          txt: widget.productName,
          txtSize: 17,
          fw: FontWeight.bold,
          family: 'Bold',
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: List.generate(6, (index){
                // ignore: sized_box_for_whitespace
                return Container(
                  width: (MediaQuery.of(context).size.width/2)-20,
                  child: ProductBox(widget.productName,'13 Reviews','TK 1500','TK 1900'),
                );
              }
            ))
          ],
        ),
      ) ,
    );
  }
}
