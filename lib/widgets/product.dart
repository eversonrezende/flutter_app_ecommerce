class Product {
  final String image;
  final String description;
  final double valueWithDiscount;
  final double oldValue;
  final int star;
  final String definition;
  final bool sale;

  const Product(
    this.image,
    this.description,
    this.valueWithDiscount,
    this.oldValue,
    this.star,
    this.definition,
    this.sale,
  );
}
