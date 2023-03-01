class PetModel {
  int petId;
  int categoryId, petAge, petWeight;
  String petName, petImage, petDistance, petGender, petDescription;
  bool isFavourite;
  PetModel({
    required this.petId,
    required this.categoryId,
    required this.petAge,
    required this.petWeight,
    required this.petName,
    required this.petImage,
    required this.petDistance,
    required this.petGender,
    required this.petDescription,
    required this.isFavourite,
  });
}
