// ignore_for_file: prefer_typing_uninitialized_variables, unnecessary_null_comparison

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pet_app/constants/constant_exports.dart';
import 'package:flutter_pet_app/widgets/button/width_button.dart';

import 'package:gap/gap.dart';

import '../../widgets/pet_detail_widgets/pet_container_widget.dart';
import '../../widgets/pet_detail_widgets/pet_description_widget.dart';
import '../../widgets/pet_detail_widgets/pet_owner_contact_widget.dart';

class PetDetailScreen extends StatefulWidget {
  const PetDetailScreen({super.key});

  @override
  State<PetDetailScreen> createState() => _PetDetailScreenState();
}

class _PetDetailScreenState extends State<PetDetailScreen> {
  String firstHalf = "";
  String secondHalf = "";
  bool showMore = false;

  @override
  Widget build(BuildContext context) {
    var petName,
        petImage,
        petDistance,
        petGender,
        petAge,
        petWeight,
        petDescription;
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    if (args != null) {
      petName = args["petName"];
      petImage = args["petImage"];
      petGender = args["petGender"];
      petDistance = args["petDistance"];
      petAge = args["petAge"];
      petWeight = args["petWeight"];
      petDescription = args["petDescription"];
    }
    return SafeArea(
      child: Hero(
        tag: petName,
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                centerTitle: true,
                leading: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: ColorConstants.kblack,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                title: const Text(
                  'Pet',
                  style: TextStyle(
                    color: ColorConstants.kblack,
                    fontFamily: 'poppins_bold',
                    fontSize: 14,
                  ),
                ),
                elevation: 0,
                backgroundColor: const Color(0xFFF9E3DE),
                expandedHeight: 340.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(petImage),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  color: const Color(0xFFF9E3DE),
                  height: 30,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        height: 30,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(50.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(
                          petName,
                          style: const TextStyle(
                            fontFamily: 'poppins_bold',
                            fontSize: 20,
                          ),
                        ),
                        subtitle: Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: ColorConstants.kred,
                            ),
                            Expanded(child: Text("Distance ($petDistance)")),
                          ],
                        ),
                        trailing: const Icon(
                          EvaIcons.heart,
                          color: ColorConstants.kred,
                        ),
                      ),
                      const Gap(16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PetContainerWidget(
                            color: 0xFFF9E3DE,
                            setPet: petGender,
                            getPet: 'Sex',
                          ),
                          PetContainerWidget(
                            color: 0xFFE8F8E7,
                            setPet: "$petAge Years",
                            getPet: 'Age',
                          ),
                          PetContainerWidget(
                            color: 0xFFCEE9FD,
                            setPet: "$petWeight Kg",
                            getPet: 'Weight',
                          ),
                        ],
                      ),
                      const Gap(16),
                      PetOwnerContactWidget(
                        isChat: false,
                      ),
                      const Gap(16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Details",
                            style: TextStyle(
                              fontFamily: 'poppins_bold',
                              fontSize: 16,
                            ),
                          ),
                          const Gap(8),
                          PetDescriptionWidget(
                            petDescription: petDescription,
                          ),
                        ],
                      ),
                      const Gap(24),
                      FullWidthButton(
                        buttonName: 'Adopt now',
                      ),
                      const Gap(16),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
