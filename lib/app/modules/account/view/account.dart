import 'package:ecommerceapp/app/components/space.dart';
import 'package:ecommerceapp/app/components/text_components.dart';
import 'package:ecommerceapp/utils/colors.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: TextComponents(
          txt: 'Account',
          fw: FontWeight.bold,
          family: 'Bold',
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          h(15),
          Container(
            decoration: BoxDecoration(
              color: greyCollor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              title: TextComponents(txt: 'Edit Profile', txtSize: 18),
              leading: Icon(Icons.person),
            ),
          ),
          ListTile(
            title: TextComponents(txt: 'Notification', txtSize: 18),
            leading: Icon(Icons.notifications),
          ),
          ListTile(
            title: TextComponents(txt: 'Order Tracking Sources', txtSize: 18),
            leading: Icon(Icons.track_changes_outlined),
          ),
          ListTile(
            title: TextComponents(txt: 'Language', txtSize: 18),
            leading: Icon(Icons.language),
          ),
          ListTile(
            title: TextComponents(txt: 'Currency', txtSize: 18),
            leading: Icon(Icons.monetization_on),
            trailing: TextComponents(txt: 'Fc'),
          ),
          ListTile(
            title: TextComponents(txt: 'Settings', txtSize: 18),
            leading: Icon(Icons.settings),
          ),
          ListTile(
            title: TextComponents(txt: 'Help Center', txtSize: 18),
            leading: Icon(Icons.help),
          ),
          ListTile(
            title: TextComponents(txt: 'Privacy Policy', txtSize: 18),
            leading: Icon(Icons.privacy_tip),
          ),
          ListTile(
            title: TextComponents(txt: 'Logout', txtSize: 18),
            leading: Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
