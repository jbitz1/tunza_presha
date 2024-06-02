import 'package:flutter/material.dart';

class PlatformLoader extends StatelessWidget {
  const PlatformLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator(strokeWidth: 2));
  }
}
