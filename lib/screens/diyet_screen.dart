import 'package:flutter/material.dart';

import '../models/diyet.dart';
import 'diyetdetail.dart';

class DiyetScreen extends StatefulWidget {
  const DiyetScreen({Key? key}) : super(key: key);

  @override
  State<DiyetScreen> createState() => _DiyetScreenState();
}

class _DiyetScreenState extends State<DiyetScreen> {
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
            Text('Diyetler', style: TextStyle(
                color: Colors.green,
                fontSize: 20,
                fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8,top: 8),
              child: Text("Günümüzde medyada diyet çeşitleri ve kilo verme yöntemleri konusunda pek çok bilgi ve öneri ile karşılaşıyoruz. Belki de zaman zaman birbiriyle çelişen bu bilgilerden nasıl yararlanacağımızı şaşırıyoruz. Pek çoğumuz için diyet demek, yasaklar listesi, keyif kaçırıcı, kendimizi geçici süre sıktığımız daha sonra acısını çıkartacağımız, sevimsiz fakat ara ara zorunlu olan bir beslenme macerasıdır",style: TextStyle(fontSize: 15,color: Colors.black54,),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8,top: 8),
              child: Text("İnsanın yaşamı boyunca yediği besinlerin, beslenme düzeninin tümüne diyet denilmektedir. Her insanın vücut yapısı farklı olduğundan, ideal kilo hakkında kesin önerilerde bulunmak mümkün değildir. Ancak kilonuzun boyunuza uygun olup olmadığı konusunda bir fikir sahibi olabilirsiniz.",style: TextStyle(fontSize: 15,color: Colors.black54,),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8,top: 8),
              child: Text("Antropometrik ölçümler (kişinin ağırlığını, vücut ölçülerini, gücünü ve hareket sınırlarını esas alarak yapılan ölçüm ve saptamalar) sürekli ve düzenli olarak kullanıldığında bireyin beslenme durumu sağlıklı olarak değerlendirilebilir. Bireyin beslenme durumunun saptanmasında sıklıkla kullanılan antropometrik ölçümler, vücut ağırlığı, boy uzunluğu, beden kitle indeksi, deri kıvrım kalınlıkları, bel çevresi vb. dir.",style: TextStyle(fontSize: 15,color: Colors.black54,),),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 320,
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
            ),
          ],
        ),
      ),
    );
  }
}
