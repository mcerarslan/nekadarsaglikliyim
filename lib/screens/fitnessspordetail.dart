import 'package:flutter/material.dart';
import 'package:sagliginihesapla/models/fitness_spor.dart';

class FitnessSporDetail extends StatefulWidget {
  final FitnessSpor thisFitnessSpor;
  const FitnessSporDetail({Key? key, required this.thisFitnessSpor}) : super(key: key);

  @override
  State<FitnessSporDetail> createState() => _FitnessSporDetailState();
}

class _FitnessSporDetailState extends State<FitnessSporDetail> {
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
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(-20)),
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: widget.thisFitnessSpor.image,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.green,
                      ),

                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(
                left: 15,
                right: 15
            ),
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.thisFitnessSpor.baslik,
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [

                      Expanded(
                        child: Text(widget.thisFitnessSpor.aciklama,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.thisFitnessSpor.hareketbaslik,
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(-20)),
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: widget.thisFitnessSpor.hareketimage,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.thisFitnessSpor.hareketbaslik2,
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(-20)),
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: widget.thisFitnessSpor.hareketimage2,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.thisFitnessSpor.hareketbaslik3,
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(-20)),
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: widget.thisFitnessSpor.hareketimage3,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.thisFitnessSpor.hareketbaslik4,
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(-20)),
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: widget.thisFitnessSpor.hareketimage4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
