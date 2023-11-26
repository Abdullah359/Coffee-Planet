import 'package:coffeeplanet/models/Data_Models/ProductDataModels.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CartController extends GetxController {
  var _product = {}.obs;

  // Add Product to Cart
  void addProduct(CoffeeDataModel product) {
    if (_product.containsKey(product)) {
      _product[product] += 1;
    } else {
      _product[product] = 1;
    }
    Get.defaultDialog(
        title: 'Cart',
        middleText: 'Added to cart successfully',
        middleTextStyle: GoogleFonts.poppins(),
        titleStyle: GoogleFonts.poppins());
  }

  // Remove Product from Cart
  void removeProduct() {}

//Get Products

//Get Product Sub-Total

// Get Total
}
