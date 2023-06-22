import 'package:flutter/material.dart';
import 'package:sagliginihesapla/models/evde_spor.dart';

class EvdeSporDetail extends StatefulWidget {

  final EvdeSpor thisEvdeSpor;
  const EvdeSporDetail({Key? key,required this.thisEvdeSpor}) : super(key: key);

  @override
  State<EvdeSporDetail> createState() => _EvdeSporDetailState();
}

class _EvdeSporDetailState extends State<EvdeSporDetail> {
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
                        height: 500,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(-20)),
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: widget.thisEvdeSpor.image,
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
                      Text(widget.thisEvdeSpor.baslik,
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
                        child: Text(widget.thisEvdeSpor.aciklama,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
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
