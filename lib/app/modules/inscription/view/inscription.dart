import 'package:ecommerceapp/app/components/button_components.dart';
import 'package:ecommerceapp/app/components/form_components.dart';
import 'package:ecommerceapp/app/components/space.dart';
import 'package:ecommerceapp/app/components/text_components.dart';
import 'package:ecommerceapp/utils/colors.dart';
import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.transparent),
      // ignore: sized_box_for_whitespace
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: TextComponents(
                  txt: 'Sign Up Now',
                  fw: FontWeight.bold,
                  txtSize: 25,
                  family: 'Bold',
                ),
              ),
              h(40),
              TextComponents(txt: 'Email', txtSize: 18),
              h(10),
              FormComponents(
                controller: emailController,
              ),
              h(20),
              TextComponents(txt: 'Phone number', txtSize: 18),
              h(10),
              FormComponents(
                controller: phoneController,
                textInputType: TextInputType.phone),
              h(20),
              TextComponents(txt: 'Password', txtSize: 18),
              h(10),
              FormComponents(
                controller: passwordController,
                hide: true,
                textInputType: TextInputType.visiblePassword,
              ),
              h(20),
              ButtonComponent(txtButton: 'Sign Up', buttonColor: maincolor),
              h(80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      width: 120,
                      color: Colors.black38,
                    ),
                  ),
                  w(20),
                  TextComponents(txt: 'Or continue with'),
                  w(20),
                  Expanded(
                    child: Container(
                      height: 1,
                      width: 120,
                      color: Colors.black38,
                    ),
                  ),
                ],
              ),
              h(20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(color: maincolor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: TextComponents(txt: 'Google')),
                    ),
                  ),
                  w(20),
                  Expanded(
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(color: maincolor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: TextComponents(txt: 'Facebook')),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
