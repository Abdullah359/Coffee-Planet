import 'package:coffeeplanet/Models/Data_Models/ProductDataModels.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SnackDetail extends StatefulWidget {
  final SnackDataModel snackDataModel;

  const SnackDetail({super.key, required this.snackDataModel});

  @override
  State<SnackDetail> createState() => _SnackDetailState();
}

class _SnackDetailState extends State<SnackDetail> {
  // Add to Cart
  void _addCart() {
    Get.back();
    Get.defaultDialog(
        title: 'Cart',
        middleText: 'Added to cart successfully',
        middleTextStyle: GoogleFonts.poppins(),
        titleStyle: GoogleFonts.poppins());
  }

  // Item initial value
  int _count = 1;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    setState(() {
      _count--;
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
                child: Image.asset(widget.snackDataModel.imageUrl,
                    fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.snackDataModel.name,
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          height: 2.5,
                        ),
                      ),
                      Text(
                        '\$${widget.snackDataModel.price}',
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
                  widget.snackDataModel.desc,
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
                                    _count > 1 ? _decrementCount() : null;
                                  },
                                  icon: FaIcon(FontAwesomeIcons.minus,
                                      color: Colors.black, size: 15),
                                ),
                                Text(
                                  _count.toString(),
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                IconButton(
                                  splashColor: Colors.transparent,
                                  onPressed: () {
                                    _count >= 1 && _count < 9
                                        ? _incrementCount()
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
                      GestureDetector(
                        onTap: () {
                          _addCart();
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
