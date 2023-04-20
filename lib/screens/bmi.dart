import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  TextEditingController _boyController = TextEditingController();
  TextEditingController _kiloController = TextEditingController();
  double _bmiResult = 0;
  String _textResult = "";
  String _text1Result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ne Kadar Sağlıklıyım?",
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Center(
              child: Container(
                child: Text(
                  "Vücut Kitle Endeksi(BMİ)", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.green),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  child: TextField(
                    controller: _boyController,
                    style: TextStyle(
                      fontSize: 42,
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
                        color:Colors.grey,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  child: TextField(
                    controller: _kiloController,
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: Colors.green,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      hintText: "Kilo",
                      hintStyle: TextStyle(
                        color:Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                double _b = double.parse(_boyController.text);
                double _k = double.parse(_kiloController.text);
                setState(() {
                  _bmiResult = _k / (_b * _b);
                  if(_bmiResult >= 45) {
                    _textResult = "Aşırı Şişman (Aşırı Obez) - III. Sınıf";
                    _text1Result = "Boyunuza göre vücut ağırlığınızın fazla olduğunu bir başka deyişle şişman olduğunuzun bir göstergesidir. Şişmanlık, kalp-damar hastalıkları, diyabet, hipertansiyon v.b. kronik hastalıklar için risk faktörüdür. Bir sağlık kuruluşuna başvurarak hekim / diyetisyen kontrolünde zayıflayarak normal ağırlığa inmeniz sağlığınız açısından çok önemlidir. Lütfen, sağlık kuruluşuna başvurunuz.";
                  } else if(_bmiResult >= 35 && _bmiResult <= 44.9) {
                    _textResult = "Şişman (Obez) - II. Sınıf";
                    _text1Result = "Uzunluğunuza göre vücut ağırlığınızın fazla olduğunu bir başka deyişle şişman olduğunuzun bir göstergesidir. Şişmanlık, kalp-damar hastalıkları, diyabet, hipertansiyon v.b. kronik hastalıklar için risk faktörüdür. Bir sağlık kuruluşuna başvurarak hekim / diyetisyen kontrolünde zayıflayarak normal ağırlığa inmeniz sağlığınız açısından çok önemlidir. Lütfen, sağlık kuruluşuna başvurunuz.";
                  }
                  else if(_bmiResult >= 30 && _bmiResult <= 34.9) {
                    _textResult = "Şişman (Obez) - I. Sınıf";
                    _text1Result = "Boyunuza göre vücut ağırlığınızın fazla olduğunu bir başka deyişle şişman olduğunuzun bir göstergesidir. Şişmanlık, kalp-damar hastalıkları, diyabet, hipertansiyon v.b. kronik hastalıklar için risk faktörüdür. Bir sağlık kuruluşuna başvurarak hekim / diyetisyen kontrolünde zayıflayarak normal ağırlığa inmeniz sağlığınız açısından çok önemlidir. Lütfen, sağlık kuruluşuna başvurunuz.";
                  }
                  else if(_bmiResult >= 25 && _bmiResult <= 29.9) {
                    _textResult = "Fazla Kilolu";
                    _text1Result = "Boyunuza göre vücut ağırlığınızın fazla olduğunu gösterir. Fazla kilolu olma durumu gerekli önlemler alınmadığı takdirde pek çok hastalık için risk faktörü olan obeziteye (şişmanlık) yol açar.";
                  }
                  else if (_bmiResult >= 18.5 && _bmiResult <=24.9){
                    _textResult = "Normal";
                    _text1Result = "Uzunluğunuza göre uygun ağırlıkta olduğunuzu gösterir. Yeterli ve dengeli beslenerek ve düzenli fiziksel aktivite yaparak bu ağırlığınızı korumaya özen gösteriniz.";
                  }
                  else {
                    _textResult = "Zayıf";
                    _text1Result = "Uzunluğunuza göre uygun ağırlıkta olmadığınızı, zayıf olduğunuzu gösterir. Zayıflık, bazı hastalıklar için risk oluşturan ve istenmeyen bir durumdur. Boyunuza uygun ağırlığa erişmeniz için yeterli ve dengeli beslenmeli, beslenme alışkanlıklarınızı geliştirmeye özen göstermelisiniz.";

                  }
                });
              },
              child: Container(
                width: 120,
                height: 45,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0), color: Colors.green,),
                child: Center(child: Text("Hesapla",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 22),)),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: 250,
              height: 250,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.green, border: Border.all(color: Colors.green, width: 2,),),
              child: Center(
                  child: Text(_bmiResult.toStringAsFixed(2), style: TextStyle(fontSize: 80, color: Colors.white , fontWeight: FontWeight.w700,),)),
            ),
            SizedBox(height: 20,),

            Visibility(
              visible: _textResult.isNotEmpty,
              child: Container(
                child: Text(_textResult, style: TextStyle(fontSize: 32, color: Colors.green, fontWeight: FontWeight.w700,),),
              ),
            ),
            Visibility(
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all((20)),
                child:
                Center(
                  child:  Text(_text1Result, style: TextStyle(fontSize:15, color: Colors.green, fontWeight: FontWeight.w400,),),
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
