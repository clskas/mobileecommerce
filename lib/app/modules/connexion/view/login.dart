import 'package:ecommerceapp/app/components/button_components.dart';
import 'package:ecommerceapp/app/components/form_components.dart';
import 'package:ecommerceapp/app/components/space.dart';
import 'package:ecommerceapp/app/components/text_components.dart';
import 'package:ecommerceapp/app/modules/forgot_password/view/forgot_password.dart';
import 'package:ecommerceapp/utils/colors.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.transparent),
      // ignore: sized_box_for_whitespace
      body: Container(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: TextComponents(
                txt: 'Sign In Now',
                fw: FontWeight.bold,
                txtSize: 25,
                family: 'Bold',
              ),
            ),
            h(40),
            TextComponents(txt: 'Email/Phone', txtSize: 18),
            h(10),
            FormComponents(controller: emailController),
            h(20),
            TextComponents(txt: 'Password', txtSize: 18),
            h(10),
            FormComponents(
              controller: passwordController,
              hide: true,
              textInputType: TextInputType.visiblePassword,
            ),
            h(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextComponents(txt: 'Remember me', color: Colors.black38),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPassword()),
                    );
                  },
                  child: TextComponents(
                    txt: 'Forgot password',
                    color: maincolor,
                    fw: FontWeight.bold,
                  ),
                ),
              ],
            ),
            h(20),
            InkWell(
              onTap: () {
                // ignore: avoid_print
                print(emailController.text);
                // ignore: avoid_print
                print(passwordController.text);
              },
              child: ButtonComponent(
                txtButton: 'Login',
                buttonColor: maincolor,
              ),
            ),
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
                    height: 60,
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
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: maincolor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: TextComponents(txt: 'Facebook')),
                  ),
                ),
              ],
            ),
            h(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextComponents(
                  txt: "Don't have any account ?",
                  fw: FontWeight.bold,
                ),
                w(20),
                TextComponents(
                  txt: "Sign Up",
                  color: maincolor,
                  fw: FontWeight.bold,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
