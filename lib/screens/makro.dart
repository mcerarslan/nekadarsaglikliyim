import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

class MakroScreen extends StatefulWidget {
  const MakroScreen({Key? key}) : super(key: key);

  @override
  State<MakroScreen> createState() => _MakroScreenState();
}

class _MakroScreenState extends State<MakroScreen> {
  TextEditingController _yasController = TextEditingController();
  TextEditingController _boyController = TextEditingController();
  TextEditingController _kiloController = TextEditingController();
  TextEditingController _hKiloController = TextEditingController();
  double _KkorumaResult = 0;
  double _KalAcikResult = 0;
  double _KalFazResult = 0;
  double _proteinResult = 0;
  double _proteinKalResult = 0;
  double _yagResult = 0;
  double _yagKalResult = 0;
  double _karbResult = 0;
  double _proteinFazKalResult = 0;
  double _yagFazResult = 0;
  double _yagFazKalResult = 0;
  double _karbFazResult = 0;

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
                    Text('Günlük Kalori ve Makro Hesaplama ', style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),),
                    SizedBox(height: 40,),
                    GroupButton(
                      isRadio: true,
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
                        Container(
                          width: 130,
                          child: TextField(
                            controller: _hKiloController,
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
                              hintText: "Hedef Kilo",
                              hintStyle: TextStyle(
                                color: Colors.grey, fontSize: 20,
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
                            double _kilo = double.parse(_kiloController.text);
                            double _hKilo = double.parse(_hKiloController.text);
                            setState(() {
                              _KkorumaResult = _kilo * 33;
                              _KalAcikResult = _KkorumaResult - 400;
                              _proteinResult = _hKilo * 2.2;
                              _proteinKalResult = _proteinResult * 4;
                              _yagKalResult = _KalAcikResult * 0.3;
                              _yagResult = _yagKalResult / 9;
                              _karbResult = (_KalAcikResult - (_proteinKalResult + _yagKalResult)) / 4;
                              _KalFazResult = _KkorumaResult + 400;
                              _yagFazKalResult = _KalFazResult * 0.3;
                              _yagFazResult = _yagFazKalResult / 9;
                              _karbFazResult = (_KalFazResult - (_proteinKalResult + _yagFazKalResult)) / 4;
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
                    SizedBox(height: 30,),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Kilo Korumak için gerekli Kalori:", style: TextStyle(fontSize: 15, color: Colors.green ,),),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("${_KkorumaResult.toStringAsFixed(0)} kcal/gün", style: TextStyle(fontSize: 30, color: Colors.green , fontWeight: FontWeight.w700,),),

                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Kalori açığı için gerekli Kalori:", style: TextStyle(fontSize: 15, color: Colors.green ,),),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("${_KalAcikResult.toStringAsFixed(0)} kcal/gün", style: TextStyle(fontSize: 30, color: Colors.green , fontWeight: FontWeight.w700,),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Makrolar:", style: TextStyle(fontSize: 25, color: Colors.green ,),),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Protein :${_proteinResult.toStringAsFixed(0)} gr/gün", style: TextStyle(fontSize: 30, color: Colors.green , fontWeight: FontWeight.w700,),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Yağ :${_yagResult.toStringAsFixed(0)} gr/gün", style: TextStyle(fontSize: 30, color: Colors.green , fontWeight: FontWeight.w700,),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Karbonhidrat:${_karbResult.toStringAsFixed(0)} gr/gün", style: TextStyle(fontSize: 30, color: Colors.green , fontWeight: FontWeight.w700,),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Kalori Fazlalığı için gerekli Kalori:", style: TextStyle(fontSize: 15, color: Colors.green ,),),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("${_KalFazResult.toStringAsFixed(0)} kcal/gün", style: TextStyle(fontSize: 30, color: Colors.green , fontWeight: FontWeight.w700,),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Makrolar:", style: TextStyle(fontSize: 25, color: Colors.green ,),),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Protein :${_proteinResult.toStringAsFixed(0)} gr/gün", style: TextStyle(fontSize: 30, color: Colors.green , fontWeight: FontWeight.w700,),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Yağ :${_yagFazResult.toStringAsFixed(0)} gr/gün", style: TextStyle(fontSize: 30, color: Colors.green , fontWeight: FontWeight.w700,),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Karbonhidrat:${_karbFazResult.toStringAsFixed(0)} gr/gün", style: TextStyle(fontSize: 30, color: Colors.green , fontWeight: FontWeight.w700,),),
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
