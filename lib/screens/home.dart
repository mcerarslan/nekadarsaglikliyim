import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sagliginihesapla/models/besin.dart';
import 'package:sagliginihesapla/models/diyet.dart';
import 'package:sagliginihesapla/models/evde_spor.dart';
import 'package:sagliginihesapla/models/fitness_spor.dart';
import 'package:sagliginihesapla/screens/bmh.dart';
import 'package:sagliginihesapla/screens/bmi.dart';
import 'package:sagliginihesapla/screens/besindetail.dart';
import 'package:sagliginihesapla/screens/fitnessspordetail.dart';
import 'package:sagliginihesapla/screens/makro.dart';
import 'package:sagliginihesapla/screens/menu.dart';
import 'package:sagliginihesapla/screens/yag_orani.dart';
import '../models/user_model.dart';
import 'diyetdetail.dart';
import 'evdespordetail.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        elevation: 0,
        title: Image.asset('assets/images/logoappbar.png',height: 100, width: 100,),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SafeArea(
                    top: false,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(36),
                              bottomLeft: Radius.circular(36),
                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(padding: EdgeInsets.only( left: 15, right:15, top: 20,),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 50,),
                                    Text("Hoşgeldin,", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 14,),),
                                    Text("${loggedInUser.firstName} ${loggedInUser.secondName}",  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20,),),
                                    SizedBox(height: 30,),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
               /*   Positioned(
                    top: 40,
                    left: 20,
                    child: InkWell(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Menu())),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.green,
                        ),
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),

                      ),
                    ),
                  ), */
                ],
              ),
              Padding(
                padding: EdgeInsets.only( left:15, right:15, top: 20),
                child: Stack(
                  children: [
                    SafeArea(
                      top: true,
                      child: Column(
                        children: [

                          Row(
                            children: [
                              Text('Hesabım',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Text('Sağlık Hesaplamaları',style: TextStyle(
                                color: Colors.black45,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),

                            ],
                          ),
                          SizedBox(height: 20,),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child:  Row(
                              children: [
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => BmiScreen()));
                                      },
                                      child: Container(
                                        height: 200,
                                        width: 140,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 0.5,
                                            color: Colors.green,
                                            style: BorderStyle.solid,
                                          ),
                                          borderRadius: BorderRadius.circular(30),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage('assets/images/vki.jpg'),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 9,),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => YagOrani()));
                                      },
                                      child: Container(
                                        height: 200,
                                        width: 140,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 0.5,
                                            color: Colors.green,
                                            style: BorderStyle.solid,
                                          ),
                                          borderRadius: BorderRadius.circular(30),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage('assets/images/yagorani.jpg'),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 9,),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => BmhScreen()));
                                      },
                                      child: Container(
                                        height: 200,
                                        width: 140,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 0.5,
                                            color: Colors.green,
                                            style: BorderStyle.solid,
                                          ),
                                          borderRadius: BorderRadius.circular(30),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage('assets/images/bmh.jpg'),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 9,),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => MakroScreen()));
                                      },
                                      child: Container(
                                        height: 200,
                                        width: 140,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 0.5,
                                            color: Colors.green,
                                            style: BorderStyle.solid,
                                          ),
                                          borderRadius: BorderRadius.circular(30),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage('assets/images/makro.jpg'),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 9,),
                                  ],
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30,),
                          /* SizedBox(
                            height: 230,
                            child: ListView.builder(
                              itemCount: hesapList.length,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return Column(
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            GestureDetector(
                                              onTap: (){
                                                Navigator.pushReplacement(context, hesapList[index].route);
                                              },
                                              child: Container(
                                                height: 170,
                                                width: 140,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    width: 0.2,
                                                    color: Colors.black45,
                                                    style: BorderStyle.solid,
                                                  ),
                                                  borderRadius: BorderRadius.circular(30),
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: hesapList[index].image,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 9,),
                                            Text(hesapList[index].name,
                                              style: TextStyle(
                                                color: Colors.black45,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),*/
                          Row(
                            children: [
                              Text('Sağlıklı Yemek Tarifleri',style: TextStyle(
                                color: Colors.black45,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),
                              SizedBox(width: 8,),
                              Text(besinList.length.toString(),
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 13,
                                ),),
                            ],
                          ),
                          SizedBox(height: 10,),
                          SizedBox(
                            height: 230,
                            child: ListView.builder(
                              itemCount: besinList.length,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return Column(
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            GestureDetector(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => BesinDetail(thisBesin:
                                                besinList[index])));

                                              },
                                              child: Container(
                                                height: 200,
                                                width: 140,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    width: 0.2,
                                                    color: Colors.black45,
                                                    style: BorderStyle.solid,
                                                  ),
                                                  borderRadius: BorderRadius.circular(30),
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: besinList[index].image,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 9,),
                                            Text(besinList[index].name,
                                              style: TextStyle(
                                                color: Colors.black45,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Text('Diyetler',style: TextStyle(
                                color: Colors.black45,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),
                              SizedBox(width: 8,),
                              Text(diyetList.length.toString(),
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 13,
                                ),),
                            ],
                          ),
                          SizedBox(height: 10,),
                          SizedBox(
                            height: 230,
                              child: ListView.builder(
                                itemCount: diyetList.length,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context,index){
                                  return Column(
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              GestureDetector(
                                                onTap: (){
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => DiyetDetail(thisDiyet:
                                                  diyetList[index])));

                                                },
                                                child: Container(
                                                  height: 200,
                                                  width: 140,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      width: 0.2,
                                                      color: Colors.black45,
                                                      style: BorderStyle.solid,
                                                    ),
                                                    borderRadius: BorderRadius.circular(30),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: diyetList[index].image,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 6,),
                                              Text(diyetList[index].baslik,
                                                style: TextStyle(
                                                  color: Colors.black45,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                        ],
                                      ),
                                    ],
                                  );
                                },
                              ),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Text('Evde Spor Hareketleri',style: TextStyle(
                                color: Colors.black45,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),
                              SizedBox(width: 8,),
                              Text(evdesporList.length.toString(),
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 13,
                                ),),
                            ],
                          ),
                          SizedBox(height: 10,),
                          SizedBox(
                            height: 230,
                            child: ListView.builder(
                              itemCount: evdesporList.length,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return Column(
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            GestureDetector(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => EvdeSporDetail(thisEvdeSpor: evdesporList[index])));

                                              },
                                              child: Container(
                                                height: 200,
                                                width: 140,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    width: 0.2,
                                                    color: Colors.black45,
                                                    style: BorderStyle.solid,
                                                  ),
                                                  borderRadius: BorderRadius.circular(30),
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: evdesporList[index].image,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 6,),
                                            Text(evdesporList[index].baslik,
                                              style: TextStyle(
                                                color: Colors.black45,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Text('Fitness Spor Hareketleri',style: TextStyle(
                                color: Colors.black45,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),
                              SizedBox(width: 8,),
                              Text(fitnesssporList.length.toString(),
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 13,
                                ),),
                            ],
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            height: 230,
                            child: ListView.builder(
                              itemCount: fitnesssporList.length,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return Column(
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            GestureDetector(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => FitnessSporDetail(thisFitnessSpor: fitnesssporList[index])));

                                              },
                                              child: Container(
                                                height: 200,
                                                width: 140,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    width: 0.2,
                                                    color: Colors.black45,
                                                    style: BorderStyle.solid,
                                                  ),
                                                  borderRadius: BorderRadius.circular(30),
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: fitnesssporList[index].image,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 6,),
                                            Text(fitnesssporList[index].baslik,
                                              style: TextStyle(
                                                color: Colors.black45,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}