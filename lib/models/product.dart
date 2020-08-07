class Product {
  final int price;
  final String id, title, category, image, subTitle, description;

  Product({
    this.id,
    this.image,
    this.category,
    this.description,
    this.price,
    this.subTitle,
    this.title,
  });

  // Creates a Product from json
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      image: json['image'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      category: json['category'],
      subTitle: json['subTitle'],
    );
  }
}

// Demo products
Product product = Product(
  id: '1',
  price: 1600,
  title: 'Wood Frame',
  image: 'https://i.imgur.com/sI4GvE6.png',
  subTitle: 'Chair',
  category: 'Tieton Armchair',
  description: _description,
);
String _description = 'This armchair is an elegant and functional piece of furniture. It is suitable for family';
