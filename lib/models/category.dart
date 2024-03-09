class Category {
  String thumbnail;
  String name;

  Category({
    required this.name,
    required this.thumbnail,
  });
}

List<Category> categoryList = [
  Category(
    name: 'Interest Free Loan',
    thumbnail: 'assets/images/interestfreeloan.png',
  ),
  Category(
    name: 'Help Disabled',
    thumbnail: 'assets/images/helpdisable.png',
  ),
  Category(
    name: 'Underprevillegedb Education',
    thumbnail: 'assets/images/underprevilleged.png',
  ),
  Category(
    name: 'Education Loan',
    thumbnail: 'assets/images/education.png',
  ),
  Category(
    name: 'Briding',
    thumbnail: 'assets/images/briding.png',
  ),
];
