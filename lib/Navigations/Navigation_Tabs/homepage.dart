import 'package:coffeeplanet/components/coffee_data_list_builder.dart';
import 'package:coffeeplanet/components/snacks_data_list_builder.dart';
import 'package:coffeeplanet/components/tea_data_list_builder.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              const SizedBox(
                height: 20,
              ),
              TextField(
                enableSuggestions: true,
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                obscureText: false,
                decoration: InputDecoration(
                  fillColor: const Color(0xffe8e8e8),
                  filled: true,
                  prefixIcon: const Icon(
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
              const SizedBox(
                height: 30,
              ),
              Theme(
                data: ThemeData(splashColor: Colors.transparent),
                child: TabBar(
                    dragStartBehavior: DragStartBehavior.start,
                    physics: const NeverScrollableScrollPhysics(),
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xffa75e44),
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: const [
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
              ),
              const SizedBox(height: 20),
              Flexible(
                child: TabBarView(children: [
                  CoffeeDataBuilder(),
                  TeaDataBuilder(),
                  SnacksDataBuilder(),
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
