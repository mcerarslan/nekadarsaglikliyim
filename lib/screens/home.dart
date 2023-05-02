import 'package:flutter/material.dart';
import 'package:sagliginihesapla/models/besin.dart';
import 'package:sagliginihesapla/models/diyet.dart';
import 'package:sagliginihesapla/models/hesap.dart';
import 'package:sagliginihesapla/screens/bmi.dart';
import 'package:sagliginihesapla/screens/besindetail.dart';
import 'package:sagliginihesapla/screens/splash_screen.dart';
import 'diyetdetail.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Hesap> hesapList = [
    Hesap(
      name: "Vücut Kitle Endeksi(BMİ)",
      image: AssetImage('assets/images/vki.jpg'),
      route: MaterialPageRoute(builder: (context) => BmiScreen()),
    ),
    Hesap(
      name: "Yağ Oranı Hesaplama",
      image: AssetImage('assets/images/vki.jpg'),
      route: MaterialPageRoute(builder: (context) => SplashScreen()),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          child: Column(
                            children: [
                              SizedBox(height: 40,),
                              Image.asset('assets/images/logo.png',height: 220, width: 220,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 20,
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
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
                  ),
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
                                  fontSize: 25,
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
                              SizedBox(width: 5,),
                              Container(
                              padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Text(hesapList.length.toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 8,
                                    ),),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          SizedBox(
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
                          ),
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