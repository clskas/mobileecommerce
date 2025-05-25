import 'package:ecommerceapp/app/components/button_components.dart';
import 'package:ecommerceapp/app/components/space.dart';
import 'package:ecommerceapp/app/components/text_components.dart';
import 'package:ecommerceapp/app/modules/home/view/home.dart';
import 'package:ecommerceapp/app/modules/productpage/view/product_page.dart';
import 'package:ecommerceapp/utils/colors.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextComponents(txt: "Notification", fw: FontWeight.bold),
        centerTitle: true,
      ),
      // ignore: sized_box_for_whitespace
      body: Center(
        // ignore: sized_box_for_whitespace
        child: Container(
          padding: EdgeInsets.all(20.0),
          height: MediaQuery.of(context).size.height / 1.3,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Icon(Icons.notifications, size: 150),
              h(20),
              TextComponents(
                txt: 'No notitication Here',
                fw: FontWeight.bold,
                family: 'Bold',
                txtSize: 28,
              ),
              h(20),
              TextComponents(
                txt: 'There is no notification to show rigth now',
                txtSize: 20,
                textAlign: TextAlign.center,
              ),
              h(20),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => ProductPage()),
                  );
                },
                child: ButtonComponent(
                  txtButton: 'Go back to home',
                  buttonColor: maincolor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
