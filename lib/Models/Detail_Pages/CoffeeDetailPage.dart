import 'package:coffeeplanet/Models/Data_Models/ProductDataModels.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../main.dart';

class CoffeeDetail extends StatefulWidget {
  final CoffeeDataModel coffeeDataModel;

  const CoffeeDetail({super.key, required this.coffeeDataModel});

  @override
  State<CoffeeDetail> createState() => _CoffeeDetailState();
}

class _CoffeeDetailState extends State<CoffeeDetail> {
  // Add to Cart
  void _addCart() {
    Navigator.pop(context);
    ScaffoldMessenger.of(GlobalContextService.navigatorKey.currentContext!)
        .showSnackBar(
      const SnackBar(
        duration: Duration(seconds: 1),
        content: Text("Added to Cart Successfully!"),
      ),
    );
  }

  // Size Cell count
  int _sizeCount = 0;

  // Size's List
  final List<String> cellSizes = [
    'Small',
    'Medium',
    'Large',
  ];

  // Item initial value
  int _count = 1;

  // Increment Function
  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  // Decrement Function
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
                child: Image.asset(widget.coffeeDataModel.imageUrl,
                    fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.coffeeDataModel.name,
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          height: 2.5,
                        ),
                      ),
                      Text(
                        widget.coffeeDataModel.price,
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xffa75e44),
                          height: 2.5,
                        ),
                      ),
                    ]),
              ),
              const SizedBox(
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
                  widget.coffeeDataModel.desc,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: SizedBox(
                  height: 60,
                  child: ListView.builder(
                      itemCount: cellSizes.length,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (ctx, index) {
                        return CoffeeSizeCell(
                          title: cellSizes[index],
                          borders: _sizeCount == index
                              ? Border.all(style: BorderStyle.none)
                              : Border.all(color: Colors.grey.shade300),
                          cellColor: _sizeCount == index
                              ? const Color(0xffa75e44)
                              : Colors.white,
                          titleColor:
                              _sizeCount == index ? Colors.white : Colors.black,
                          onPress: () {
                            setState(() {
                              _sizeCount = index;
                            });
                          },
                        );
                      }),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  splashColor: Colors.transparent,
                                  onPressed: () {
                                    _count > 1 ? _decrementCount() : null;
                                  },
                                  icon: const FaIcon(FontAwesomeIcons.minus,
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
                                  icon: const FaIcon(
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
                            color: const Color(0xffa75e44),
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
    required this.borders,
  });

  final Color cellColor;
  final String title;
  final Color titleColor;
  final void Function()? onPress;
  final BoxBorder borders;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 40,
        width: 80,
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: cellColor,
          border: borders,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.poppins(
                color: titleColor, fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
