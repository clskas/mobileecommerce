// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:ecommerceapp/app/components/button_components.dart';
import 'package:ecommerceapp/app/components/form_components.dart';
import 'package:ecommerceapp/app/components/space.dart';
import 'package:ecommerceapp/app/components/text_components.dart';
import 'package:ecommerceapp/app/modules/changePassword/view/change_state.dart';
import 'package:ecommerceapp/utils/colors.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextComponents(
                txt: 'Enter New Password',
                txtSize: 25,
                fw: FontWeight.bold,
                family: 'Bold',
              ),
              h(20),
              TextComponents(
                txt:
                    'Your new password must be different from the previous password you used',
                txtSize: 18,
                textAlign: TextAlign.center,
              ),
              h(40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextComponents(
                    txt: 'Password',
                    txtSize: 18,
                    textAlign: TextAlign.center,
                    fw: FontWeight.bold,
                    family: 'Bold',
                  ),
                  h(10),
                  FormComponents(
                    controller: passwordController,
                    textInputType: TextInputType.visiblePassword,
                    hide: true,
                  ),
                  TextComponents(
                    txt: 'Must be a minimun of eight caracters',
                    txtSize: 16,
                    textAlign: TextAlign.center,
                  ),
                  h(20),
                  TextComponents(
                    txt: 'Confirm Password',
                    txtSize: 18,
                    textAlign: TextAlign.center,
                    fw: FontWeight.bold,
                  ),
                  h(10),
                  FormComponents(
                    controller: confirmPasswordController,
                    textInputType: TextInputType.visiblePassword,
                    hide: true,
                  ),
                  TextComponents(
                    txt: 'Both password must be match',
                    txtSize: 16,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              h(40),
              InkWell(
                onTap: () {
                  if (passwordController.text != confirmPasswordController.text) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.red,
                        content: TextComponents(
                          txt: "Les deux mots de passe ne sont identiques",
                          color: Colors.white,
                        ),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.green,
                        content: TextComponents(
                          txt: "Mot de passe reinitialisé avec succes",
                          color: Colors.white,
                        ),
                      ),
                    );

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChangeState()),
                    );
                  }
                },
                child: ButtonComponent(
                  txtButton: 'Save',
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
