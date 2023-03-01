import 'package:flutter_pet_app/models/pet_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PetList extends StateNotifier<List<PetModel>> {
  PetList() : super([]);

  void addFav(PetModel favPet) => state = [...state, favPet];

  void removePet(PetModel removePet) => state = [
        for (final pet in state)
          if (pet != removePet) pet,
      ];
}

final provider = StateNotifierProvider<PetList, List<PetModel>>((ref) {
  return PetList();
});

class ChangeFavouriteNotifier extends StateNotifier<bool> {
  ChangeFavouriteNotifier() : super(false);

  void toggle() {
    state = !state;
  }
}

final fav = StateNotifierProvider<ChangeFavouriteNotifier, bool>(
  (ref) => ChangeFavouriteNotifier(),
);
