import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.height,
    this.width,
    this.leading,
    this.trailing,
    this.title,
    this.actions,
  });

  final double? height;
  final double? width;
  final Widget? title;
  final Icon? leading;
  final Icon? trailing;
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
      backgroundColor: Colors.transparent,
      actions: <Widget>[
        // trailing ?? const Icon(Icons.menu),
        IconButton(
          icon: const Icon(Icons.shopping_cart.),
          onPressed: (){},
        )
      ],
    );
  }
}
