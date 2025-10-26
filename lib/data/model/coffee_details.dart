class CoffeeDetails {
  String? coffeeId;
  String? coffeeName;
  String? coffeePrice;
  String? coffeeRating;
  String? imagePath;
  String? isAddedToCart;
  String? isFavourite;

  CoffeeDetails({
    this.coffeeId,
    this.coffeeName,
    this.coffeePrice,
    this.coffeeRating,
    this.imagePath,
    this.isAddedToCart,
    this.isFavourite,
  });

  // Optional: Factory constructor to create from a map
  factory CoffeeDetails.fromMap(Map<String, dynamic> map) {
    return CoffeeDetails(
      coffeeId: map['coffeeId'] as String?,
      coffeeName: map['coffeeName'] as String?,
      coffeePrice: map['coffeePrice'] as String?,
      coffeeRating: map['coffeeRating'] as String?,
      imagePath: map['imagePath'] as String?,
      isAddedToCart: map['isAddedToCart'] as String?,
      isFavourite: map['isFavourite'] as String?,
    );
  }

  // Optional: Convert to map (useful for saving in provider or local storage)
  Map<String, dynamic> toMap() {
    return {
      'coffeeId': coffeeId,
      'coffeeName': coffeeName,
      'coffeePrice': coffeePrice,
      'coffeeRating': coffeeRating,
      'imagePath': imagePath,
      'isAddedToCart': isAddedToCart,
      'isFavourite': isFavourite,
    };
  }
}
