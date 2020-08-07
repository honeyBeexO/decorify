class Category {
  final String id;
  final String image;
  final String title;

  final int numOfProducts;
  Category({
    this.id,
    this.image,
    this.numOfProducts,
    this.title,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      image: json['image'],
      title: json['title'],
      numOfProducts: json['numOfProducts'],
    );
  }
}
// Demo Category

Category category = Category(
  id: '1',
  title: 'Armchair',
  image: 'https://i.imgur.com/JqKDdxj.png',
  numOfProducts: 100,
);
