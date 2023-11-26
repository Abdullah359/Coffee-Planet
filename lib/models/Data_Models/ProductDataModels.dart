class CoffeeDataModel {
  final String name, imageUrl, normalPrice, desc;
  final String mediumPrice;
  final String largePrice;

  CoffeeDataModel(this.name, this.imageUrl, this.normalPrice, this.desc,
      this.mediumPrice, this.largePrice);
}

class TeaDataModel {
  final String name, imageUrl, price, desc;

  TeaDataModel(this.name, this.imageUrl, this.price, this.desc);
}

class SnackDataModel {
  final String name, imageUrl, price, desc;

  SnackDataModel(this.name, this.imageUrl, this.price, this.desc);
}
