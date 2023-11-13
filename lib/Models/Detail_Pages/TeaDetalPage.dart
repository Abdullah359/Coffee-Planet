import 'package:coffeeplanet/Models/Data_Models/ProductDataModels.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TeaDetail extends StatefulWidget {
  final TeaDataModel teaDataModel;

  const TeaDetail({super.key, required this.teaDataModel});

  @override
  State<TeaDetail> createState() => _TeaDetailState();
}

class _TeaDetailState extends State<TeaDetail> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                width: double.infinity,
                height: 350,
                child: Image.asset(widget.teaDataModel.imageUrl,
                    fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.teaDataModel.name,
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          height: 2.5,
                        ),
                      ),
                      Text(
                        widget.teaDataModel.price,
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffa75e44),
                          height: 2.5,
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Description',
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 22.0,
                  right: 15,
                ),
                child: Text(
                  widget.teaDataModel.desc,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 40,
                        width: 110,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  splashColor: Colors.transparent,
                                  onPressed: () {
                                    _counter > 1 ? _decrementCounter() : null;
                                  },
                                  icon: FaIcon(FontAwesomeIcons.minus,
                                      color: Colors.black, size: 15),
                                ),
                                Text(
                                  _counter.toString(),
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                IconButton(
                                  splashColor: Colors.transparent,
                                  onPressed: () {
                                    _counter >= 1 && _counter < 9
                                        ? _incrementCounter()
                                        : null;
                                  },
                                  icon: FaIcon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              duration: Duration(seconds: 1),
                              content: Text("Added to Cart Successfully!"),
                            ),
                          );
                        },
                        child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xffa75e44),
                          ),
                          child: Center(
                            child: Text(
                              'Add to Cart',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            ]),
            Positioned(
              top: 10,
              left: 20,
              child: GestureDetector(
                child: Container(
                  height: 50,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: FaIcon(
                      FontAwesomeIcons.angleLeft,
                      color: Colors.black,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop(context);
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
