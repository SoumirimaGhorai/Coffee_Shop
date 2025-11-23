class ColdCoffeeDetails {
  String? coffeeId;
  String? coffeeName;
  String? coffeePrice;
  double? coffeeRating;
  String? imagePath;
  int? ratingCount;

  // String? isAddedToCart;
  // String? isFavourite;

  ColdCoffeeDetails({
    this.coffeeId,
    this.coffeeName,
    this.coffeePrice,
    this.coffeeRating,
    this.imagePath,
    this.ratingCount,
    // this.isAddedToCart,
    // this.isFavourite,
  });

  // Factory constructor to create from a map
  // factory ColdCoffeeDetails.fromMap(Map<String, dynamic> map) {
  //   return ColdCoffeeDetails(
  //     coffeeId: map['coffeeId'] as String?,
  //     coffeeName: map['coffeeName'] as String?,
  //     coffeePrice: map['coffeePrice'] as String?,
  //     coffeeRating: map['coffeeRating'] as double?,
  //     imagePath: map['imagePath'] as String?,
  //     //
  //   );
 // }
}