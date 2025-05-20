import 'package:ecommerceapp/app/modules/home/view/home.dart';
import 'package:flutter/material.dart';

time(BuildContext context) {
  Future.delayed(Duration(seconds: 5), () {
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home(),
    ));
  });
}
