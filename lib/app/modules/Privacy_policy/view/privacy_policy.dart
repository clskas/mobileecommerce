import 'package:ecommerceapp/app/components/space.dart';
import 'package:ecommerceapp/app/components/text_components.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: TextComponents(
          txt: 'Privacy Pol',
          fw: FontWeight.bold,
          family: 'Bold',
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextComponents(txt: 'Privacy Policy', fw: FontWeight.bold),
            h(20),
            TextComponents(
              txt:
                  'At Man and kids fashion house, we take your privacy seriously.This Privacy Policy explains how to collect, use, disclose and safeguard your information when you use our mobile application Man and kids fashion house',
            ),
            h(20),
            TextComponents(
              txt:
                  'Please read this Privacy Policy carefully. IF YOU DO NOT AGREE WITH THE TERMS OF THIS PRIVACY POLICY,PLEASE DO NOT ACCESS THE APPLICATION',
            ),
            h(20),
            TextComponents(
              txt: 'Collection of Your information',
              fw: FontWeight.bold,
            ),
            h(20),
            TextComponents(
              txt:
                  'We may collect information about you in a variety of ways. The information we may collect includes :',
            ),
            h(20),
            TextComponents(
              txt:
                  'Our server automatically collects when you access the application, such as your native actions that are integral',
            ),
            h(20),
            TextComponents(txt: 'Use of your information', fw: FontWeight.bold),
            h(20),
            TextComponents(
              txt: 'We use the information we collect in order to :',
            ),
            h(20),
            TextComponents(
              txt: 'Provide, operate and maintain our application',
            ),
            h(10),
            TextComponents(
              txt: 'Improve, personnalize and expand our application',
            ),
            h(10),
            TextComponents(
              txt:
                  'Develop new products, services, features and functionnality',
            ),
          ],
        ),
      ),
    );
  }
}
