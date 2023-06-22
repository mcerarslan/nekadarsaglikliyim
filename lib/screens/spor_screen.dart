import 'package:flutter/material.dart';

import '../models/evde_spor.dart';
import '../models/fitness_spor.dart';
import 'evdespordetail.dart';
import 'fitnessspordetail.dart';

class SporScreen extends StatefulWidget {
  const SporScreen({Key? key}) : super(key: key);

  @override
  State<SporScreen> createState() => _SporScreenState();
}

class _SporScreenState extends State<SporScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60,),
            Padding(padding: EdgeInsets.only(
                left: 15,
                right: 15
            ),
              child: Row(
                children: [
                  Positioned(
                    top: 60,
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
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Text('Sağlıklı Spor Hareketleri', style: TextStyle(
                color: Colors.green,
                fontSize: 20,
                fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8,top: 8),
              child: Text("Fitness, kişilerin günlük olarak gerçekleştirdikleri ve farklı birçok egzersize sahip olan sağlıklı yaşamı destekleyen bir spordur. Kişilerin düzenli olarak gerçekleştirdikleri fitness antrenmanları, kişilerin zinde kalmasına, enerjik olmasına ve sağlıklı bir yaşam sürmelerini sağlamaktadır. Çoğu kişi fitnessı vücut geliştirme egzersizleri olarak görse de aslında, kişilerin sağlıklı olmasını ve birçok hastalığa karşı koruma sağlamasına imkan sunmaktadır.\nKişilerin düzenli olarak fitness egzersizlerini gerçekleştirmesi ve düzenli beslenme alışkanlığı ile bu egzersizleri desteklemesi vücut sağlığı açısından oldukça faydalıdır. Fitness, vücut geliştirmek için tercih edilen bir spor değildir. Fitness ile kaslar hacimsel açıdan gelişmez. Tüm kas yapıları çalışı ve güçlenir ancak, vücut geliştirme için yapılan egzersizlerde olduğu gibi kas yapılarının şişmesine neden olmaz. Fitness daha çok sağlıklı bir yaşam için tercih edilen egzersizler bütününü meydana getirmektedir.",style: TextStyle(fontSize: 15,color: Colors.black54,),),
            ),
             SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
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
            ),
            SizedBox(height: 10,),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
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
             ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
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
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 320,
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
            ),
          ],
        ),
      ),
    );
  }
}
