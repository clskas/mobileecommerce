import 'package:ecommerceapp/app/components/button_components.dart';
import 'package:ecommerceapp/app/components/space.dart';
import 'package:ecommerceapp/app/components/text_components.dart';
import 'package:ecommerceapp/app/modules/splash/welcome/view/welcome.dart';
import 'package:ecommerceapp/utils/colors.dart';
import 'package:flutter/material.dart';

class ChangeState extends StatefulWidget {
  const ChangeState({super.key});

  @override
  State<ChangeState> createState() => _ChangeStateState();
}

class _ChangeStateState extends State<ChangeState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // ignore: sized_box_for_whitespace
      body: Center(
        // ignore: sized_box_for_whitespace
        child: Container(
          padding: EdgeInsets.all(20.0),
          height: MediaQuery.of(context).size.height / 1.3,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Icon(Icons.check_circle, color: Colors.green, size: 150),
              h(20),
              TextComponents(
                txt: 'Congratulations',
                fw: FontWeight.bold,
                family: 'Bold',
                txtSize: 28,
              ),
              h(20),
              TextComponents(
                txt: 'Your account has been successfully created',
                txtSize: 20,
                textAlign: TextAlign.center,
              ),
              h(20),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Welcome()),
                  );
                },
                child: ButtonComponent(
                  txtButton: 'Continue Shopping',
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
