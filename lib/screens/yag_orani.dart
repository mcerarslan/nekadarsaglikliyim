import 'dart:math';

import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

class YagOrani extends StatefulWidget {
  const YagOrani({Key? key}) : super(key: key);

  @override
  State<YagOrani> createState() => _YagOraniState();

}

class _YagOraniState extends State<YagOrani> {
  TextEditingController _boyController = TextEditingController();
  TextEditingController _boyunController = TextEditingController();
  TextEditingController _belController = TextEditingController();
  TextEditingController _kalcaController = TextEditingController();
  String _yorumResult = "";
  String _yorum2Result = "";
  double _yagResult = 0;
  int gender = 0;
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
            Container(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 40,),
                    Text('Vücut Yağ Oranı Hesaplama', style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),),
                    SizedBox(height: 40,),
                    GroupButton(
                      isRadio: true,
                        onSelected: (value, index, isSelected) {
                           gender = index;
                        },
                        options: GroupButtonOptions(
                          buttonWidth: 114,
                          buttonHeight: 60,
                          spacing: 15,
                          borderRadius: BorderRadius.circular(15),
                          unselectedBorderColor: Colors.green,
                          selectedColor: Colors.green,
                        ),
                        buttons: ["Erkek", "Kadın"],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 130,
                          child: TextField(
                            controller: _boyController,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w300,
                              color: Colors.green,
                            ),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              hintText: "Boy",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: 130,
                          child: TextField(
                            controller: _boyunController,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w300,
                              color: Colors.green,
                            ),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              hintText: "Boyun",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 130,
                          child: TextField(
                            controller: _belController,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w300,
                              color: Colors.green,
                            ),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              hintText: "Bel",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: 130,
                          child: TextField(
                            controller: _kalcaController,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w300,
                              color: Colors.green,
                            ),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              hintText: "Kalça",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Column(
                      children: [

                        GestureDetector(
                          onTap: () {
                            double _boy = double.parse(_boyController.text);
                            double _bel = double.parse(_belController.text);
                            double _boyun = double.parse(_boyunController.text);
                            double _kalca = double.parse(_kalcaController.text);
                            setState(() {
                              if (gender == 0) {
                                     _yagResult = 495 / (1.0324 - 0.19077 * log10(_bel - _boyun) + 0.15456 * log10(_boy))- 450;
                                  if(_yagResult >= 25) {
                                    _yorumResult = "Yüksek Yağ Oranı: Çok Yağlı veya Obez Yağ Oranına Sahipsin";
                                    _yorum2Result = "Yağ Oranını Düşürmek için; Uzun vadede kilo vermeyi amaçlayın. Orta dereceli antrenmanlar ile başlayıp, çalışma yoğunluğunu kademeli olarak artırmayı hedeflemeniz doğru olacaktır. Obezite probleminiz varsa, kardiyo ağırlıklı egzersizler ile başlayabilirsiniz.";
                                  } else if(_yagResult >= 18 && _yagResult <= 24.9) {
                                    _yorumResult = "Ortalama Yağ Oranı";
                                    _yorum2Result = "Vücut yağ oranın ortalama seviyede! Düzenli yaşam tarzına devam ederek bunu koruyabilirsin. Hareketi de hayatından eksik etmemeye dikkat et.";
                                  }
                                  else if(_yagResult >= 14 && _yagResult <= 17.9) {
                                    _yorumResult = "Fit bir Yağ Oranına Sahipsin";
                                    _yorum2Result = "Harikasın! Vücut yağ oranın ideal seviyede! Şimdi sana düşen bunu korumak. Hareketi ihmal etmeden, düzenli ve dengeli beslenmeye devam!";
                                  }
                                  else if(_yagResult >= 6 && _yagResult <= 13.9) {
                                    _yorumResult = "Sporcu düzeyinde Yağ Oranına Sahipsin";
                                    _yorum2Result = "Harikasın! Vücut yağ oranın Sporcu seviyesinde! Şimdi sana düşen bunu korumak. Hareketi ihmal etmeden, düzenli ve dengeli beslenmeye devam!";
                                  }
                                  else if(_yagResult >= 2 && _yagResult <= 5.9) {
                                    _yorumResult = "Düşük Yağ Oranı: Yaşam için Esasinyel Yağ Oranına Sahipsin";
                                    _yorum2Result = "Yağ Oranını Artırmak için; Daha sık beslenin. Zayıfsanız kendinizi çok çabuk doymuş hissedersiniz. Gün içerisinde birkaç büyük öğün tüketmek yerine öğünlerinizi küçültüp sıklığını artırabilirsiniz. Örnek olarak; 3 büyük öğün yerine beş ile altı küçük öğün tüketmek.";
                                  }
                              } else if (gender == 1){

                                  _yagResult = 495 / (1.29579 - 0.35004 * log10(_bel + _kalca - _boyun) + 0.22100 * log10(_boy)) - 450;

                                  if(_yagResult >= 32) {
                                     _yorumResult = "Yüksek Yağ Oranı: Çok Yağlı veya Obez Yağ Oranına Sahipsin";
                                     _yorum2Result = "Yağ Oranını Düşürmek için; Uzun vadede kilo vermeyi amaçlayın. Orta dereceli antrenmanlar ile başlayıp, çalışma yoğunluğunu kademeli olarak artırmayı hedeflemeniz doğru olacaktır. Obezite probleminiz varsa, kardiyo ağırlıklı egzersizler ile başlayabilirsiniz.";
                                  } else if(_yagResult >= 25 && _yagResult <= 31.9) {
                                     _yorumResult = "Ortalama Yağ Oranı";
                                     _yorum2Result = "Vücut yağ oranın ortalama seviyede! Düzenli yaşam tarzına devam ederek bunu koruyabilirsin. Hareketi de hayatından eksik etmemeye dikkat et.";
                                  }
                                  else if(_yagResult >= 21 && _yagResult <= 24.9) {
                                    _yorumResult = "Fit bir Yağ Oranına Sahipsin";
                                    _yorum2Result = "Harikasın! Vücut yağ oranın ideal seviyede! Şimdi sana düşen bunu korumak. Hareketi ihmal etmeden, düzenli ve dengeli beslenmeye devam!";
                                  }
                                  else if(_yagResult >= 14 && _yagResult <= 20.9) {
                                    _yorumResult = "Sporcu düzeyinde Yağ Oranına Sahipsin";
                                    _yorum2Result = "Harikasın! Vücut yağ oranın Sporcu seviyesinde! Şimdi sana düşen bunu korumak. Hareketi ihmal etmeden, düzenli ve dengeli beslenmeye devam!";
                                  }
                                  else if(_yagResult >= 10 && _yagResult <= 13.9) {
                                    _yorumResult = "Düşük Yağ Oranı: Yaşam için Esasinyel Yağ Oranına Sahipsin";
                                    _yorum2Result = "Yağ Oranını Artırmak için; Daha sık beslenin. Zayıfsanız kendinizi çok çabuk doymuş hissedersiniz. Gün içerisinde birkaç büyük öğün tüketmek yerine öğünlerinizi küçültüp sıklığını artırabilirsiniz. Örnek olarak; 3 büyük öğün yerine beş ile altı küçük öğün tüketmek.";
                                  }
                              }
                            });
                          },
                          child: Container(
                            width: 120,
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: Colors.green,),
                            child: Center(child: Text("Hesapla",
                              style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22),)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25,),
                    Text("%${_yagResult.toStringAsFixed(2)}", style: TextStyle(fontSize: 65, color: Colors.green , fontWeight: FontWeight.w700,),),
                    SizedBox(height: 15,),
                    Visibility(
                      
                      visible: _yorumResult.isNotEmpty,
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 30,right: 30,),
                        child: Text(_yorumResult, style: TextStyle(fontSize: 25, color: Colors.green, fontWeight: FontWeight.w700,),),
                      ),
                    ),
                    Visibility(
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all((20)),
                        child:
                        Center(
                          child:  Text(_yorum2Result, style: TextStyle(fontSize:15, color: Colors.green, fontWeight: FontWeight.w400,),),
                        ),

                      ),
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

  double log10(double x) {
    return log(x) / log(10);
  }

}
