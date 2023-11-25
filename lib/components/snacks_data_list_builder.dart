import 'package:coffeeplanet/components/data_listtile.dart';
import 'package:flutter/material.dart';
import '../Models/Data_Models/ProductDataModels.dart';
import '../Models/Detail_Pages/SnackDetailPage.dart';
import '../main.dart';

class SnacksDataBuilder extends StatelessWidget {
  SnacksDataBuilder({super.key});

  static List<String> snacksName = [
    "Bread",
    "Chocolate Cookies",
    "Cupcakes",
    "Donuts",
    "French Cosine",
    "Macaroons"
  ];

  static List<String> snacksImages = [
    "assets/images/snacks_images/bread.png",
    "assets/images/snacks_images/chocolate_cookies.png",
    "assets/images/snacks_images/cupcakes.png",
    "assets/images/snacks_images/donuts.png",
    "assets/images/snacks_images/french_cuisine.png",
    "assets/images/snacks_images/macaroons.png",
  ];

  static List<String> snacksPrice = [
    "22.00",
    "22.00",
    "22.00",
    "22.00",
    "22.00",
    "22.00",
  ];

  static List<String> snacksDesc = [
    "Description of Snacks",
    "Description of Snacks",
    "Description of Snacks",
    "Description of Snacks",
    "Description of Snacks",
    "Description of Snacks",
  ];

  final List<SnackDataModel> snacksData = List.generate(
    snacksName.length,
    (index) => SnackDataModel(
      snacksName[index],
      snacksImages[index],
      snacksPrice[index],
      snacksDesc[index],
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
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        itemCount: snacksData.length,
        itemBuilder: (context, index) {
          return DataListTile(
              imageURL: snacksData[index].imageUrl,
              title: snacksData[index].name,
              price: '\$${snacksData[index].price}',
              addCartOnTap: () {
                _addCart();
              },
              navigateOnTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SnackDetail(
                      snackDataModel: snacksData[index],
                    ),
                  ),
                );
              });
        });
  }
}
