import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pet_app/constants/constant_exports.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';

import '../../provider/add_favourite_provider.dart';
import '../../widgets/comman_app_bar/comman_app_bar.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBarWidget(
        appBarName: 'Pet',
        appBar: AppBar(),
      ),
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final getProvider = ref.watch(provider);
          final PetList providerNotifier = ref.watch(provider.notifier);
          return getProvider.isEmpty
              ? Column(
                  children: [
                    Lottie.asset("assets/lottie/no_fav.json",
                        controller: _controller, onLoaded: (composition) {
                      _controller
                        ..duration = composition.duration
                        ..forward();
                    }),
                    const Center(
                      child: Text(
                        "You have no favourites",
                        style: TextStyle(
                          fontFamily: 'poppins_bold',
                          fontSize: 24,
                          color: ColorConstants.kblack,
                        ),
                      ),
                    ),
                  ],
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24.0,
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                            itemCount: getProvider.length,
                            itemBuilder: (context, index) {
                              var favouritePet = getProvider[index];
                              return Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        IconButton(
                                          icon: const Icon(
                                            EvaIcons.heart,
                                            color: ColorConstants.kred,
                                          ),
                                          onPressed: () {
                                            providerNotifier
                                                .removePet(favouritePet);
                                          },
                                        ),
                                        Image.asset(favouritePet.petImage),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              favouritePet.petName,
                                              style: const TextStyle(
                                                fontFamily: 'poppins_bold',
                                                fontSize: 16,
                                              ),
                                            ),
                                            const Gap(8),
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.location_on_outlined,
                                                  color: ColorConstants.kred,
                                                ),
                                                Text(
                                                  "Distance (${favouritePet.petDistance})",
                                                  style: FontConstants
                                                      .commonTexts.titleSmall,
                                                ),
                                              ],
                                            ),
                                            const Gap(8),
                                            Row(
                                              children: const [
                                                Icon(
                                                  EvaIcons.messageCircleOutline,
                                                  color: Color(0xFF4AA2F1),
                                                ),
                                                Gap(8),
                                                Icon(
                                                  EvaIcons.phoneOutline,
                                                  color: ColorConstants.kred,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                );
        },
      ),
    );
  }
}
