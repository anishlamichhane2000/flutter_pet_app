// ignore_for_file: must_be_immutable, unused_local_variable

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pet_app/constants/constant_exports.dart';
import 'package:flutter_pet_app/models/pet_model.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../provider/add_favourite_provider.dart';

class PetWidget extends ConsumerWidget {
  String petName, petImage, petDistance;
  dynamic petGender, petAge, petWeight, petDescription, categoryId;
  bool isFavourite;
  int petId;
  PetWidget({
    super.key,
    required this.petName,
    required this.petImage,
    required this.petDistance,
    required this.petGender,
    required this.petAge,
    required this.petWeight,
    required this.petDescription,
    required this.categoryId,
    required this.isFavourite,
    required this.petId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var res = ref.watch(fav);
    final PetList providerNotifier = ref.watch(provider.notifier);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        width: 200,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                color: const Color(0xFFF9E3DE),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(
                petImage,
                fit: BoxFit.fitHeight,
              ),
            ),
            ListTile(
              title: Text(
                petName,
                style: const TextStyle(
                  fontFamily: 'poppins_semi_bold',
                ),
              ),
              subtitle: Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: ColorConstants.kred,
                  ),
                  Expanded(
                    child: Text(
                      "Distance ($petDistance)",
                      style: const TextStyle(
                        fontFamily: 'poppins_regular',
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              trailing: IconButton(
                icon: const Icon(
                  EvaIcons.heartOutline,
                  color: ColorConstants.kred,
                ),
                onPressed: () {
                  ref.read(fav.notifier).toggle();
                  providerNotifier.addFav(
                    PetModel(
                      categoryId: categoryId,
                      petAge: petAge,
                      petDescription: petDescription,
                      petDistance: petDistance,
                      petGender: petGender,
                      petImage: petImage,
                      petName: petName,
                      petWeight: petWeight,
                      isFavourite: false,
                      petId: petId,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
