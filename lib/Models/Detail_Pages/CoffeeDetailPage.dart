import 'package:coffeeplanet/Models/Data_Models/ProductDataModels.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

<<<<<<< HEAD
class CoffeeDetail extends StatelessWidget {
=======
class CoffeeDetail extends StatefulWidget {
>>>>>>> 885cf50 (first commit)
  final CoffeeDataModel coffeeDataModel;

  const CoffeeDetail({super.key, required this.coffeeDataModel});

  @override
<<<<<<< HEAD
=======
  State<CoffeeDetail> createState() => _CoffeeDetailState();
}

class _CoffeeDetailState extends State<CoffeeDetail> {
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
>>>>>>> 885cf50 (first commit)
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                width: double.infinity,
                height: 350,
<<<<<<< HEAD
                child: Image.asset(coffeeDataModel.imageUrl, fit: BoxFit.cover),
=======
                child: Image.asset(widget.coffeeDataModel.imageUrl,
                    fit: BoxFit.cover),
>>>>>>> 885cf50 (first commit)
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
<<<<<<< HEAD
                        coffeeDataModel.name,
=======
                        widget.coffeeDataModel.name,
>>>>>>> 885cf50 (first commit)
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          height: 2.5,
                        ),
                      ),
                      Text(
<<<<<<< HEAD
                        coffeeDataModel.price,
=======
                        widget.coffeeDataModel.price,
>>>>>>> 885cf50 (first commit)
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
<<<<<<< HEAD
                  coffeeDataModel.desc,
=======
                  widget.coffeeDataModel.desc,
>>>>>>> 885cf50 (first commit)
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CoffeeSizeCell(
                          cellColor: Color(0xffa75e44),
                          title: 'Small',
                          titleColor: Colors.white,
                          onPress: () {}),
                      CoffeeSizeCell(
                          cellColor: Colors.white,
                          title: 'Medium',
                          titleColor: Colors.black,
                          onPress: () {}),
                      CoffeeSizeCell(
                          cellColor: Colors.white,
                          title: 'Large',
                          titleColor: Colors.black,
                          onPress: () {}),
                    ]),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
<<<<<<< HEAD
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
=======
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
>>>>>>> 885cf50 (first commit)
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
<<<<<<< HEAD
                                  onPressed: () {},
=======
                                  onPressed: () {
                                    _counter > 1 ? _decrementCounter() : null;
                                  },
>>>>>>> 885cf50 (first commit)
                                  icon: FaIcon(FontAwesomeIcons.minus,
                                      color: Colors.black, size: 15),
                                ),
                                Text(
<<<<<<< HEAD
                                  '1',
=======
                                  _counter.toString(),
>>>>>>> 885cf50 (first commit)
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                IconButton(
                                  splashColor: Colors.transparent,
<<<<<<< HEAD
                                  onPressed: () {},
=======
                                  onPressed: () {
                                    _counter >= 1 && _counter < 9
                                        ? _incrementCounter()
                                        : null;
                                  },
>>>>>>> 885cf50 (first commit)
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

class CoffeeSizeCell extends StatelessWidget {
  const CoffeeSizeCell({
    super.key,
    required this.cellColor,
    required this.title,
    required this.titleColor,
    required this.onPress,
  });

  final Color cellColor;
  final String title;
  final Color titleColor;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 40,
        width: 90,
        decoration: BoxDecoration(
          color: cellColor,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.poppins(
                color: titleColor, fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
