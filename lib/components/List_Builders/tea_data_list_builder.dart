import 'package:coffeeplanet/components/data_listtile.dart';
import 'package:flutter/material.dart';
import '../../Models/Data_Models/ProductDataModels.dart';
import '../../Models/Detail_Pages/TeaDetalPage.dart';
import '../../main.dart';

class TeaDataBuilder extends StatelessWidget {
  TeaDataBuilder({super.key});

  static List<String> teaName = [
    "Black Tea",
    "Green Tea",
    "Herbal Tea",
    "Milk Tea",
    "Pink Tea",
    "White Tea"
  ];

  static List<String> teaImages = [
    "assets/images/tea_images/black_tea.png",
    "assets/images/tea_images/green_tea.png",
    "assets/images/tea_images/herbal_tea.png",
    "assets/images/tea_images/milk_tea.png",
    "assets/images/tea_images/pink_tea.png",
    "assets/images/tea_images/white_tea.png",
  ];

  static List<String> teaPrice = [
    "22.00",
    "22.00",
    "22.00",
    "22.00",
    "22.00",
    "22.00",
  ];

  static List<String> teaDesc = [
    'Description of Tea',
    'Description of Tea',
    'Description of Tea',
    'Description of Tea',
    'Description of Tea',
    'Description of Tea',
  ];

  final List<TeaDataModel> teaData = List.generate(
    teaName.length,
    (index) => TeaDataModel(
      teaName[index],
      teaImages[index],
      teaPrice[index],
      teaDesc[index],
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
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: teaData.length,
        itemBuilder: (context, index) {
          return DataListTile(
              imageURL: teaData[index].imageUrl,
              title: teaData[index].name,
              price: '\$${teaData[index].price}',
              addCartOnTap: () {
                _addCart();
              },
              navigateOnTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => TeaDetail(
                      teaDataModel: teaData[index],
                    ),
                  ),
                );
              });
        });
  }
}
