import 'package:flutter_pet_app/constants/constant_exports.dart';
import 'package:flutter_pet_app/models/pet_model.dart';

class CategoryModel {
  int id;
  String categoryImage, categoryName;
  List<PetModel> petmodels;
  CategoryModel({
    required this.id,
    required this.categoryImage,
    required this.categoryName,
    required this.petmodels,
  });
}

class CategoryService {
  static List<CategoryModel> categoryLists = [
    CategoryModel(
      id: 0,
      categoryImage: ImageConstants.categoryImage1,
      categoryName: 'Cat',
      petmodels: [
        PetModel(
          petId: 1,
          petName: 'Moutouik',
          petImage: ImageConstants.categoryImage1,
          petDistance: '5km',
          categoryId: 0,
          petAge: 2,
          petGender: 'female',
          petWeight: 10,
          petDescription:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc leo tortor, posuere sit amet est commodo, scelerisque ultricies arcu. Nullam eros sapien, auctor sed mattis et, eleifend eget lacus. Pellentesque vitae ante sed magna aliquam aliquam. Vivamus sit amet mauris ut nibh luctus finibus. Suspendisse ac ligula at ipsum ullamcorper scelerisque id non mi.',
          isFavourite: false,
        ),
      ],
    ),
    CategoryModel(
      id: 1,
      categoryImage: ImageConstants.categoryImage2,
      categoryName: 'Dog',
      petmodels: [
        PetModel(
          petId: 2,
          petName: 'Samantha',
          petImage: ImageConstants.dog1,
          petDistance: '10km',
          categoryId: 1,
          petAge: 2,
          petGender: 'female',
          petWeight: 10,
          petDescription:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          isFavourite: false,
        ),
        PetModel(
          petId: 3,
          petName: 'Kitly',
          petImage: ImageConstants.dog2,
          petDistance: '5km',
          categoryId: 1,
          petAge: 1,
          petGender: 'male',
          petWeight: 10,
          petDescription:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc leo tortor, posuere sit amet est commodo, scelerisque ultricies arcu. Nullam eros sapien, auctor sed mattis et, eleifend eget lacus. Pellentesque vitae ante sed magna aliquam aliquam. Vivamus sit amet mauris ut nibh luctus finibus. Suspendisse ac ligula at ipsum ullamcorper scelerisque id non mi.',
          isFavourite: false,
        ),
      ],
    ),
    CategoryModel(
      id: 2,
      categoryImage: ImageConstants.categoryImage3,
      categoryName: 'Fish',
      petmodels: [
        PetModel(
          petId: 4,
          petName: 'Fisher',
          petImage: ImageConstants.categoryImage1,
          petDistance: '100km',
          categoryId: 2,
          petAge: 1,
          petGender: 'female',
          petWeight: 2,
          petDescription:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc leo tortor, posuere sit amet est commodo, scelerisque ultricies arcu. Nullam eros sapien, auctor sed mattis et, eleifend eget lacus. Pellentesque vitae ante sed magna aliquam aliquam. Vivamus sit amet mauris ut nibh luctus finibus. Suspendisse ac ligula at ipsum ullamcorper scelerisque id non mi.',
          isFavourite: false,
        ),
        PetModel(
          petId: 5,
          petName: 'Fisher11',
          petImage: ImageConstants.categoryImage1,
          petDistance: '20km',
          categoryId: 2,
          petAge: 2,
          petGender: 'female',
          petWeight: 10,
          petDescription:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc leo tortor, posuere sit amet est commodo, scelerisque ultricies arcu. Nullam eros sapien, auctor sed mattis et, eleifend eget lacus. Pellentesque vitae ante sed magna aliquam aliquam. Vivamus sit amet mauris ut nibh luctus finibus. Suspendisse ac ligula at ipsum ullamcorper scelerisque id non mi.',
          isFavourite: false,
        ),
        PetModel(
          petId: 6,
          petName: 'Fishered',
          petImage: ImageConstants.categoryImage1,
          petDistance: '2km',
          categoryId: 2,
          petAge: 2,
          petGender: 'female',
          petWeight: 10,
          petDescription:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc leo tortor, posuere sit amet est commodo, scelerisque ultricies arcu. Nullam eros sapien, auctor sed mattis et, eleifend eget lacus. Pellentesque vitae ante sed magna aliquam aliquam. Vivamus sit amet mauris ut nibh luctus finibus. Suspendisse ac ligula at ipsum ullamcorper scelerisque id non mi.',
          isFavourite: false,
        ),
      ],
    ),
    CategoryModel(
      id: 3,
      categoryImage: ImageConstants.categoryImage4,
      categoryName: 'Chick',
      petmodels: [
        PetModel(
          petId: 7,
          petName: 'Quak',
          petImage: ImageConstants.categoryImage1,
          petDistance: '20km',
          categoryId: 3,
          petAge: 2,
          petGender: 'female',
          petWeight: 10,
          petDescription:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc leo tortor, posuere sit amet est commodo, scelerisque ultricies arcu. Nullam eros sapien, auctor sed mattis et, eleifend eget lacus. Pellentesque vitae ante sed magna aliquam aliquam. Vivamus sit amet mauris ut nibh luctus finibus. Suspendisse ac ligula at ipsum ullamcorper scelerisque id non mi.',
          isFavourite: false,
        ),
      ],
    ),
    CategoryModel(
      id: 4,
      categoryImage: ImageConstants.categoryImage5,
      categoryName: 'Rabbit',
      petmodels: [
        PetModel(
          petId: 8,
          petName: 'Keimi',
          petImage: ImageConstants.categoryImage1,
          petDistance: '1km',
          categoryId: 4,
          petAge: 2,
          petGender: 'female',
          petWeight: 10,
          petDescription:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc leo tortor, posuere sit amet est commodo, scelerisque ultricies arcu. Nullam eros sapien, auctor sed mattis et, eleifend eget lacus. Pellentesque vitae ante sed magna aliquam aliquam. Vivamus sit amet mauris ut nibh luctus finibus. Suspendisse ac ligula at ipsum ullamcorper scelerisque id non mi.',
          isFavourite: false,
        ),
        PetModel(
          petId: 10,
          petName: 'Bobo',
          petImage: ImageConstants.categoryImage1,
          petDistance: '5km',
          categoryId: 4,
          petAge: 2,
          petGender: 'male',
          petWeight: 10,
          petDescription:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc leo tortor, posuere sit amet est commodo, scelerisque ultricies arcu. Nullam eros sapien, auctor sed mattis et, eleifend eget lacus. Pellentesque vitae ante sed magna aliquam aliquam. Vivamus sit amet mauris ut nibh luctus finibus. Suspendisse ac ligula at ipsum ullamcorper scelerisque id non mi.',
          isFavourite: false,
        ),
      ],
    ),
  ];
}
