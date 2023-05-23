import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WidgetAnimation extends StatefulWidget {
  final String path;
  final bool? loop;
  final double? height, width;
  final int? animationSpeed;
  final BoxFit? fit;
  final EdgeInsets? margin, padding;
  const WidgetAnimation({
    Key? key,
    required this.path,
    this.loop,
    this.height,
    this.width,
    this.animationSpeed,
    this.fit,
    this.margin,
    this.padding,
  }) : super(key: key);

  @override
  State<WidgetAnimation> createState() => _WidgetAnimationState();
}

class _WidgetAnimationState extends State<WidgetAnimation>
    with TickerProviderStateMixin {
  // Declaration
  late final AnimationController controller;

  // Initialization
  @override
  void initState() {
    controller = AnimationController(vsync: this);
    super.initState();
  }

  // Disposal
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      padding: widget.padding,
      child: Lottie.asset(
        widget.path,
        controller: controller,
        repeat: widget.loop ?? false,
        fit: widget.fit,
        height: widget.height,
        width: widget.width,
        onLoaded: (composition) {
          // Configure the AnimationController with the duration of the
          // Lottie file and start the animation.
          Duration duration = Duration(
              milliseconds: composition.duration.inMilliseconds ~/
                  int.parse("${widget.animationSpeed ?? 1}"));
          if (widget.loop != null && widget.loop == true) {
            controller
              ..duration = duration
              ..forward()
              ..repeat(period: duration);
          } else {
            controller
              ..duration = duration
              ..forward();
          }
        },
      ),
    );
  }
}
