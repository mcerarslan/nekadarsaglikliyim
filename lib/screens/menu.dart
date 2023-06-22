import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sagliginihesapla/screens/diyet_screen.dart';
import 'package:sagliginihesapla/screens/hesap_screen.dart';
import 'package:sagliginihesapla/screens/home.dart';
import 'package:sagliginihesapla/screens/spor_screen.dart';
import 'package:sagliginihesapla/screens/yemek_screen.dart';

import '../models/user_model.dart';
import 'login_screen.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('${loggedInUser.firstName} ${loggedInUser.secondName}',
        style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
            ),
            accountEmail: Text('${loggedInUser.email}',
            style: TextStyle(
    color: Colors.white,
    ),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                    'http://cdn.onlinewebfonts.com/svg/img_180628.png',
                    width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                  color: Color(0xFF66BB6A),
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.green,
            ),
          ),
          ListTile(
              leading: Icon(Icons.home),
              title: Text('Anasayfa'),
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              }

          ),
          ListTile(
              leading: Icon(Icons.calculate_outlined),
              title: Text('Sağlık Hesaplamaları'),
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HesapScreen()),
                );
              }

          ),
          ListTile(
              leading: Icon(Icons.food_bank_outlined),
              title: Text('Sağlıklı Yemek Tarifleri'),
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => YemekScreen()),
                );
              }
          ),
          ListTile(
              leading: Icon(Icons.emoji_food_beverage_outlined),
              title: Text('Diyetler'),
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DiyetScreen()),
                );
              }
          ),
          ListTile(
              leading: Icon(Icons.fitness_center),
              title: Text('Sağlıklı Spor Hareketleri'),
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SporScreen()),
                );
              }
          ),

          Divider(
            height: 20,
          ),
          ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Çıkış'),
              onTap: () {
    FirebaseAuth.instance.signOut().then((value) =>
    {
      Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(builder: (_) => LoginScreen()), (
          Route<dynamic> route) => false)
    });
              }
          ),
        ],
      ),
    );
  }
  Future <void> logout (BuildContext context) async
  {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }

}
