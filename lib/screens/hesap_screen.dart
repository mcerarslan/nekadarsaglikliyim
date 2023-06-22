import 'package:flutter/material.dart';
import 'package:sagliginihesapla/screens/yag_orani.dart';
import 'bmh.dart';
import 'bmi.dart';
import 'makro.dart';

class HesapScreen extends StatefulWidget {
  const HesapScreen({Key? key}) : super(key: key);

  @override
  State<HesapScreen> createState() => _HesapScreenState();
}

class _HesapScreenState extends State<HesapScreen> {
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
            Text('Sağlık Hesaplamaları', style: TextStyle(
                color: Colors.green,
                fontSize: 20,
                fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,top: 8,),
              child: Text("Vücut kitle indeksi (VKİ) ya da boy kilo indeksi; bir kişinin vücudundaki tahmini yağ oranını gösteren bir hesaplama yöntemidir. Bu yöntemde kişinin boy kilo oranı esas alınır. İndeksin verdiği sonuca göre kişinin mevcut kilosunun, ideal kilosuna yakınlığı ve uzaklığı hesaplanabilir",style: TextStyle(fontSize: 15,color: Colors.black54,),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,top: 8,),
              child: Text("Vücut yağ oranı; Vücuttaki yağların toplam ağırlığının, vücudun toplam ağırlığına yüzde cinsinden oranıdır.",style: TextStyle(fontSize: 15,color: Colors.black54,),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,top: 8,),
              child: Text("Bazal Metabolizma Hızı; Vücudun dinlenme halindeyken harcadığı enerjidir. Fiziksel ve ruhsal olarak bütünüyle rahatlamış ve yaklaşık 12 saatlik açlık durumunda olan bir insanın; nefes almak, kalp atışı, kan dolaşımı ve vücut sıcaklığının belirli bir düzeyde tutulmasını sağlamak gibi hayati fonksiyonlarını yerine getirebilmesi için gereksinim duyduğu enerji miktarıdır.",style: TextStyle(fontSize: 15,color: Colors.black54,),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,top: 8,),
              child: Text("Vücudumuzun büyük miktarda ihtiyaç duyduğu besinler makro besinlerdir. Karbonhidrat, protein ve yağlar makro besin öğeleri olarak ifade edilmektedir.",style: TextStyle(fontSize: 15,color: Colors.black54,),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40,),
              child: Center(
                child: Column(
                  children: [

                    SizedBox(height: 20,),
                    Column(
                      children: [
                        Row(
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
                          ],
                        ),
                        Row(
                          children: [
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
