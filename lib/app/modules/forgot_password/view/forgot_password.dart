import 'package:ecommerceapp/app/components/button_components.dart';
import 'package:ecommerceapp/app/components/form_components.dart';
import 'package:ecommerceapp/app/components/space.dart';
import 'package:ecommerceapp/app/components/text_components.dart';
import 'package:ecommerceapp/app/modules/connexion/view/login.dart';
import 'package:ecommerceapp/app/modules/otp/view/otp.dart';
import 'package:ecommerceapp/utils/colors.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      // ignore: sized_box_for_whitespace
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15.0),
        // ignore: sized_box_for_whitespace
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              TextComponents(
                txt: "Forgot Password",
                fw: FontWeight.bold,
                txtSize: 25,
                family: "Bold",
              ),
              h(20),
              TextComponents(
                txt:
                    "Don't worry! It occurs. Please enter the email adress linked with your account",
                textAlign: TextAlign.center,
              ),
              h(40),
              Image.asset('assets/images/forgot.png', scale: 1.8),
              h(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextComponents(txt: "Email/Phone", fw: FontWeight.bold),
                ],
              ),
              FormComponents(
                controller: emailController,
                textInputType: TextInputType.emailAddress),
              h(20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OTP()),
                  );
                },
                child: ButtonComponent(
                  txtButton: 'Send',
                  buttonColor: maincolor,
                ),
              ),
              h(20),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: TextComponents(txt: 'Back to Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
