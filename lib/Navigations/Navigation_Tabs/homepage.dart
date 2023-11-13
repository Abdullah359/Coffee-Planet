import 'package:coffeeplanet/Models/Data_Models/ProductDataModels.dart';
import 'package:coffeeplanet/Models/Detail_Pages/CoffeeDetailPage.dart';
import 'package:coffeeplanet/Models/Detail_Pages/SnackDetailPage.dart';
import 'package:coffeeplanet/Models/Detail_Pages/TeaDetalPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  static List<String> coffeeName = [
    "Cappuccino",
    "Coffee",
    "Black Coffee",
    "Iced Coffee",
    "Chocolate Coffee",
    "Espresso"
  ];

  static List<String> coffeeImages = [
    "assets/images/coffee_images/cappuccino.jpg",
    "assets/images/coffee_images/coffee.jpg",
    "assets/images/coffee_images/black_coffee.jpg",
    "assets/images/coffee_images/iced_coffee.jpg",
    "assets/images/coffee_images/chocolate_coffee.jpg",
    "assets/images/coffee_images/espresso.jpg",
  ];

  final List<CoffeeDataModel> coffeeData = List.generate(
    coffeeName.length,
    (index) => CoffeeDataModel(
        coffeeName[index],
        coffeeImages[index],
        '22.00',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
            'sed do eiusmod tempor incididunt ut labore et dolore '
            'magna aliqua. Ut enim ad minim veniam, quis nostrud '
            'exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
            'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum '
            'dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non '
            'proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
  );

  static List<String> teaName = [
    "Black Tea",
    "Green Tea",
    "Herbal Tea",
    "Milk Tea",
    "Pink Tea",
    "White Tea"
  ];

  static List<String> teaImages = [
    "assets/images/tea_images/black_tea.jpg",
    "assets/images/tea_images/green_tea.jpg",
    "assets/images/tea_images/herbal_tea.jpg",
    "assets/images/tea_images/milk_tea.jpg",
    "assets/images/tea_images/pink_tea.jpg",
    "assets/images/tea_images/white_tea.jpg",
  ];

  final List<TeaDataModel> teaData = List.generate(
    teaName.length,
    (index) => TeaDataModel(
        teaName[index],
        teaImages[index],
        '22.00',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
            'sed do eiusmod tempor incididunt ut labore et dolore '
            'magna aliqua. Ut enim ad minim veniam, quis nostrud '
            'exercitation ullamco laboris nisi ut aliquip ex ea commodo '
            'consequat. Duis aute irure dolor in reprehenderit in voluptate '
            'velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint '
            'occaecat cupidatat non proident, sunt in culpa qui officia deserunt '
            'mollit anim id est laborum.'),
  );

  static List<String> snacksName = [
    "Bread",
    "Chocolate Cookies",
    "Cupcakes",
    "Donuts",
    "French Cosine",
    "Macarons"
  ];

  static List<String> snacksImages = [
    "assets/images/snacks_images/bread_image.jpg",
    "assets/images/snacks_images/cookie_image.jpg",
    "assets/images/snacks_images/cupcake.jpg",
    "assets/images/snacks_images/donut_image.jpg",
    "assets/images/snacks_images/french_cosine.jpg",
    "assets/images/snacks_images/macarons_image.jpg",
  ];

  final List<SnackDataModel> snacksData = List.generate(
    snacksName.length,
    (index) => SnackDataModel(
        snacksName[index],
        snacksImages[index],
        '22.00',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
            'sed do eiusmod tempor incididunt ut labore et dolore '
            'magna aliqua. Ut enim ad minim veniam, quis nostrud '
            'exercitation ullamco laboris nisi ut aliquip ex ea commodo '
            'consequat. Duis aute irure dolor in reprehenderit in voluptate '
            'velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint '
            'occaecat cupidatat non proident, sunt in culpa qui officia deserunt '
            'mollit anim id est laborum.'),
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/images/pfp.jpeg',
                      height: 60,
                      width: 55,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/logo.png',
                  height: 60,
                  width: 55,
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              TextField(
                enableSuggestions: true,
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                obscureText: false,
                decoration: InputDecoration(
                  fillColor: Color(0xffe8e8e8),
                  filled: true,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xffa75e44),
                    size: 30,
                  ),
                  hintText: 'Search Your Favourite Menu',
                  hintStyle: GoogleFonts.poppins(),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TabBar(
                  physics: NeverScrollableScrollPhysics(),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xffa75e44),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    TabsWidget(
                      title: 'Coffee',
                    ),
                    TabsWidget(
                      title: 'Tea',
                    ),
                    TabsWidget(
                      title: 'Snack',
                    ),
                  ]),
              SizedBox(height: 20),
              Expanded(
                child: TabBarView(children: [
                  ListView.builder(
                      itemCount: coffeeData.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 100,
                          child: Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: ListTile(
                                leading: SizedBox(
                                  height: 90,
                                  width: 60,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                        coffeeData[index].imageUrl,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                title: Text(
                                  coffeeData[index].name,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500),
                                ),
                                subtitle: Text('22.00'),
                                trailing: IconButton(
                                  icon: FaIcon(FontAwesomeIcons.circlePlus),
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        duration: Duration(seconds: 1),
                                        content:
                                            Text("Added to Cart Successfully!"),
                                      ),
                                    );
                                  },
                                ),
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => CoffeeDetail(
                                        coffeeDataModel: coffeeData[index],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        );
                      }),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: teaData.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 100,
                          child: Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: ListTile(
                                leading: SizedBox(
                                  height: 90,
                                  width: 60,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(teaData[index].imageUrl,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                title: Text(
                                  teaData[index].name,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500),
                                ),
                                subtitle: Text('22.00'),
                                trailing: IconButton(
                                  icon: FaIcon(FontAwesomeIcons.circlePlus),
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        duration: Duration(seconds: 1),
                                        content:
                                            Text("Added to Cart Successfully!"),
                                      ),
                                    );
                                  },
                                ),
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => TeaDetail(
                                        teaDataModel: teaData[index],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        );
                      }),
                  ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: BouncingScrollPhysics(),
                      itemCount: snacksData.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 100,
                          child: Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: ListTile(
                                leading: SizedBox(
                                  height: 90,
                                  width: 60,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                        snacksData[index].imageUrl,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                title: Text(
                                  snacksData[index].name,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500),
                                ),
                                subtitle: Text('22.00'),
                                trailing: IconButton(
                                  icon: FaIcon(FontAwesomeIcons.circlePlus),
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        duration: Duration(seconds: 1),
                                        content:
                                            Text("Added to Cart Successfully!"),
                                      ),
                                    );
                                  },
                                ),
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => SnackDetail(
                                        snackDataModel: snacksData[index],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        );
                      }),
                ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class TabsWidget extends StatelessWidget {
  const TabsWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 90,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
