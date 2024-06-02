import 'package:flutter/material.dart';
import 'package:tunza_presha/utils.dart';

class UserInitialsWidget extends StatelessWidget {
  const UserInitialsWidget({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).primaryColor.withOpacity(0.1),
      ),
      child: Text(
        extractNamesInitials(name: name),
        style: TextStyle(
          fontSize: 22,
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
