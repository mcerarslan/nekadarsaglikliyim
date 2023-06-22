import 'package:flutter/material.dart';
import 'package:sagliginihesapla/models/besin.dart';

import 'besindetail.dart';
class YemekScreen extends StatefulWidget {
  const YemekScreen({Key? key}) : super(key: key);

  @override
  State<YemekScreen> createState() => _YemekScreenState();
}

class _YemekScreenState extends State<YemekScreen> {
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
            Text('Sağlıklı Yemek Tarifleri', style: TextStyle(
                color: Colors.green,
                fontSize: 20,
                fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Sağlıklı yemek tarifleri hazırlaması zor ve çok malzemeli midir? Elbette hayır. 10 dakikada ve evde sık sık bulunan malzemelerle pratik ve sağlıklı yemek tarifleri hazırlayabilirsiniz. Akşam yemeğinde ne yapacağımı bilemiyorum. Hem pratik hem lezzetli hem de sağlıklı akşam yemeği tarifi var mıdır acaba? diye düşünüyorsanız doğru yerdesiniz. Paylaştığımız sağlıklı yemek alternatifleriyle sofranıza hızlıca akşam yemeği menüsü hazırlayabilirsiniz.",style: TextStyle(fontSize: 15,color: Colors.black54,),),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 350,
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
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text("10 Dakikada Sağlıklı Yemek Tarifleri",style: TextStyle(fontSize: 15,color: Colors.black54,),),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Text("Uzman Diyetisyen Gamze Altınay Erpak",style: TextStyle(fontSize: 15,color: Colors.green, fontWeight: FontWeight.w600,),),
            ),
          ],
        ),
      ),
    );
  }
}
