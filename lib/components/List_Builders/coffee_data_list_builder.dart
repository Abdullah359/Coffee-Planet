import 'package:flutter/material.dart';
import '../../Models/Data_Models/ProductDataModels.dart';
import '../../Models/Detail_Pages/CoffeeDetailPage.dart';
import '../../main.dart';
import '../data_listtile.dart';

class CoffeeDataBuilder extends StatelessWidget {
  CoffeeDataBuilder({super.key});

  static List<String> coffeeName = [
    "Cappuccino",
    "Coffee",
    "Black Coffee",
    "Iced Coffee",
    "Chocolate Coffee",
    "Espresso"
  ];

  static List<String> coffeeImages = [
    "assets/images/coffee_images/cappuccino.png",
    "assets/images/coffee_images/coffee.png",
    "assets/images/coffee_images/black_coffee.png",
    "assets/images/coffee_images/iced_coffee.png",
    "assets/images/coffee_images/chocolate_coffee.png",
    "assets/images/coffee_images/espresso.png",
  ];

  static List<String> coffeePrice = [
    "22.00",
    "22.00",
    "22.00",
    "22.00",
    "22.00",
    "22.00",
  ];

  static List<String> coffeeDesc = [
    'Description of Coffee',
    'Description of Coffee',
    'Description of Coffee',
    'Description of Coffee',
    'Description of Coffee',
    'Description of Coffee',
  ];

  final List<CoffeeDataModel> coffeeData = List.generate(
    coffeeName.length,
    (index) => CoffeeDataModel(
      coffeeName[index],
      coffeeImages[index],
      coffeePrice[index],
      coffeeDesc[index],
    ),
  );

  // Add to Cart
  void _addCart() {
    ScaffoldMessenger.of(GlobalContextService.navigatorKey.currentContext!)
        .showSnackBar(
      const SnackBar(
        duration: Duration(seconds: 1),
        content: Text("Added to Cart Successfully!"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        itemCount: coffeeData.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return DataListTile(
            imageURL: coffeeData[index].imageUrl,
            title: coffeeData[index].name,
            price: '\$${coffeeData[index].price}',
            addCartOnTap: () {
              _addCart();
            },
            navigateOnTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CoffeeDetail(
                    coffeeDataModel: coffeeData[index],
                  ),
                ),
              );
            },
          );
        });
  }
}
