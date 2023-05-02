import 'package:flutter/material.dart';
import 'package:sagliginihesapla/models/diyet.dart';

class DiyetDetail extends StatefulWidget {

  final Diyet thisDiyet;
  const DiyetDetail({Key? key,required this.thisDiyet}) : super(key: key);

  @override
  State<DiyetDetail> createState() => _DiyetDetailState();
}

class _DiyetDetailState extends State<DiyetDetail> {
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
                            image: widget.thisDiyet.image,
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
                      Text(widget.thisDiyet.baslik,
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
                        child: Text(widget.thisDiyet.aciklama,
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
                    children: [

                      Expanded(
                        child: Text(widget.thisDiyet.ikincibaslik,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [

                      Expanded(
                        child: Text(widget.thisDiyet.ikinciaciklama,
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
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topLeft:  Radius.circular(36),
                  topRight:  Radius.circular(36),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                   top: 20,
                  left: 15,
                    bottom: 20,
                ),
                child: Expanded(
                  child: Text(widget.thisDiyet.kaynakca,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
