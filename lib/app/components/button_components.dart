// import 'package:ecommerceapp/utils/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonComponent extends StatelessWidget {
  String txtButton;
  Color buttonColor ;
  ButtonComponent({super.key, 
  required this.txtButton,
  this.buttonColor = Colors.black
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: buttonColor,
      ),
      child: Center(
        child: Text(
          txtButton,
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
      ),
    );
  }
}
