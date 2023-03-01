import 'package:flutter/material.dart';
import 'package:flutter_pet_app/constants/color_constants/color_constants.dart';

class CommonAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final AppBar appBar;
  final String appBarName;
  const CommonAppBarWidget({
    Key? key,
    required this.appBar,
    required this.appBarName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        appBarName,
        style: const TextStyle(
            color: ColorConstants.kblack,
            fontFamily: 'poppins_bold',
            fontSize: 14),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
