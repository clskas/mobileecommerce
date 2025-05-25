import 'dart:math';

import 'package:ecommerceapp/app/components/button_components.dart';
import 'package:ecommerceapp/app/components/form_components.dart';
import 'package:ecommerceapp/app/components/space.dart';
import 'package:ecommerceapp/app/components/text_components.dart';
import 'package:ecommerceapp/utils/colors.dart';
import 'package:flutter/material.dart';

class EditAccount extends StatefulWidget {
  const EditAccount({super.key});

  @override
  State<EditAccount> createState() => _EditAccountState();
}

class _EditAccountState extends State<EditAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: TextComponents(
          txt: 'Edit Profile',
          fw: FontWeight.bold,
          family: 'Bold',
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage(
                        'assets/images/clspicture.jpg',
                      ),
                    ),
                    h(10),
                    TextComponents(
                      txt: 'Celestin Kas',
                      family: 'Bold',
                      txtSize: 20,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextComponents(
                  txt: 'Email',
                  family: 'Bold',
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            h(10),
            FormComponents(textInputType: TextInputType.emailAddress),
            h(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [TextComponents(txt: 'Password', family: 'Bold')],
            ),
            h(10),
            FormComponents(
              textInputType: TextInputType.visiblePassword,
              hide: true,
            ),
            h(40),
            ButtonComponent(txtButton: 'Save', buttonColor: maincolor),
          ],
        ),
      ),
    );
  }
}
