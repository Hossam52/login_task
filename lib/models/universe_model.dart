class UniverseModel {
  String name;
  String description;
  String image;
  bool favorite;
  UniverseModel(
      {required this.name,
      required this.description,
      required this.image,
      this.favorite = false});
}

List<UniverseModel> universes = [
  UniverseModel(
      name: 'Darb el tebana',
      description: 'Darp el tepana is great',
      image: 'assets/images/universe2.jpg'),
  UniverseModel(
      name: 'Second UniverseModel',
      description: 'I dont know discription',
      image: 'assets/images/universe3.jpg'),
  UniverseModel(
      name: 'Third image',
      description: 'I Love Flutter',
      image: 'assets/images/universe.jpg'),
  UniverseModel(
      name: 'Darb ',
      description: 'Good experience',
      image: 'assets/images/universe4.jpg'),
  UniverseModel(
      name: 'Ana Hossam',
      description: 'Hossam Hassan is my name',
      image: 'assets/images/universe5.jpg'),
  UniverseModel(
      name: 'Good training',
      description: 'What a wonderful life',
      image: 'assets/images/universe3.jpg'),
  UniverseModel(
      name: 'Fill the space',
      description: 'Good people to know',
      image: 'assets/images/universe2.jpg'),
];
