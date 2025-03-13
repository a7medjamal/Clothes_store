import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBarr extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarr({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: const Color(0xff1c1c1c),
      leading: IconButton(
        icon: const Icon(CupertinoIcons.arrow_left),
        onPressed: () {},
        color: Colors.white,
      ),
      actions: [
        IconButton(
          icon: const Icon(CupertinoIcons.heart),
          onPressed: () {},
          color: Colors.white,
        ),
        IconButton(
          icon: const Icon(CupertinoIcons.bag),
          onPressed: () {},
          color: Colors.white,
        ),
      ],
    );
  }
}
