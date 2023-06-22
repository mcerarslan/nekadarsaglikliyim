import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

class BmhScreen extends StatefulWidget {
  const BmhScreen({Key? key}) : super(key: key);

  @override
  State<BmhScreen> createState() => _BmhScreenState();
}

class _BmhScreenState extends State<BmhScreen> {
  TextEditingController _yasController = TextEditingController();
  TextEditingController _boyController = TextEditingController();
  TextEditingController _kiloController = TextEditingController();
  int gender=0;
  double _bmhresult = 0;
  String _yorumResult = "";
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
                    Text('Bazal Metabolizma Hızı Hesaplama', style: TextStyle(
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
                            controller: _yasController,
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
                              hintText: "Yaş",
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
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 130,
                          child: TextField(
                            controller: _kiloController,
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
                              hintText: "Kilo",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        GestureDetector(
                          onTap: () {
                            double _boy = double.parse(_boyController.text);
                            double _yas = double.parse(_yasController.text);
                            double _kilo = double.parse(_kiloController.text);
                            setState(() {
                              if (gender == 0) {
                                _bmhresult = 66.5 + (13.75 * _kilo ) + (5.03 * _boy ) - (6.75 * _yas);
                                _yorumResult = "BMH Yapılan Kişi: ${_yas.toStringAsFixed(0)} yaşında, ${_boy.toStringAsFixed(0)} cm boy ve ${_kilo.toStringAsFixed(0)} kg ağırlığa sahip bir Erkek";
                              } else if (gender == 1){
                                _bmhresult = 655.1 + (9.56 * _kilo ) + (1.85 * _boy ) - (4.68 * _yas);
                                _yorumResult = "BMH Yapılan Kişi: ${_yas.toStringAsFixed(0)} yaşında, ${_boy.toStringAsFixed(0)} cm boy ve ${_kilo.toStringAsFixed(0)} kg ağırlığa sahip bir Kadın";
                              }
                            });
                          },
                          child: Container(
                            width: 120,
                            height: 65,
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
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text("Bazal Metabolizma Hız(BMH)", style: TextStyle(fontSize: 20, color: Colors.green , fontWeight: FontWeight.w700,),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("${_bmhresult.toStringAsFixed(0)} kcal/gün", style: TextStyle(fontSize: 40, color: Colors.green , fontWeight: FontWeight.w700,),),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: Text(_yorumResult, style: TextStyle(fontSize: 20, color: Colors.green , fontWeight: FontWeight.w700,),),
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
