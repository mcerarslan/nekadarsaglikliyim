import 'package:flutter/material.dart';
import 'package:sagliginihesapla/models/besin.dart';

class BesinDetail extends StatefulWidget {
  final Besin thisBesin;
  const BesinDetail({Key? key,required this.thisBesin}) : super(key: key);

  @override
  State<BesinDetail> createState() => _BesinDetailState();
}

class _BesinDetailState extends State<BesinDetail> {
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
                        height: 600,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                          image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: widget.thisBesin.image,
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
                      Text(widget.thisBesin.name,
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Kategori: ${widget.thisBesin.category}",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),

                  Row(
                    children: [

                      Expanded(
                        child: Text(widget.thisBesin.description,
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
                        child: Text("Malzemeler;",
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
                        child: Text(widget.thisBesin.material,
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
                        child: Text("Hazırlanışı;",
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
                        child: Text(widget.thisBesin.preparation,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
