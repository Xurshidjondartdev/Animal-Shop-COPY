import "package:cached_network_image/cached_network_image.dart";
import "package:flutter/material.dart";

import "appbar_more_button.dart";

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key, // Added Key? for super.key
    required this.imageUrl,
    required this.onBackPress,
    required this.onMenuPress,
  });

  final String imageUrl;
  final VoidCallback onBackPress;
  final VoidCallback onMenuPress;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: FlexibleSpaceBar(
        background: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: onBackPress,
      ),
      actions: const <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: MoreDropdown(),
        ),
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(200.0);
}
