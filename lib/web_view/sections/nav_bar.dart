import 'package:flutter/material.dart';
import 'package:zi/widgets/content_body.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ContentBody(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [Text("isDesktop: ")],
      ),
    );
  }
}
