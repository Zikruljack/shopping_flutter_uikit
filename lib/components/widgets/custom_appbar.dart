import 'package:flutter/material.dart';
import 'package:shopping_flutter_uikit/core/constants/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.height,
    this.width,
    this.leading,
    this.title,
    this.actions,
  });

  final double? height;
  final double? width;
  final Widget? title;
  final Icon? leading;
  final List<Widget>? actions;

  @override
  Size get preferredSize => Size(
        width ?? double.infinity,
        height ?? 78.0,
      );
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      leading: leading,
      backgroundColor: ColorConstants.primaryColor,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.notifications_active_outlined),
          color: ColorConstants.ligthBackgroundColor,
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.shopping_cart_outlined),
          color: ColorConstants.ligthBackgroundColor,
          onPressed: () {},
        )
      ],
    );
  }
}
