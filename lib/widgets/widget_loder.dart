import 'package:flutter/material.dart';
import 'package:web_view/widgets/widget_animation.dart';

class WidgetLoader extends StatelessWidget {
  const WidgetLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const WidgetAnimation(
        path: 'assets/animations/loading.json',
        height: 75,
        loop: true,
      ),
    );
  }
}
