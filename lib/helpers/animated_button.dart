import 'package:flutter/material.dart';

///
/// A simple button with bounce animation
class AnimatedButton extends StatefulWidget {
  AnimatedButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.onTapCancel,
    this.onTapDown,
  });
  Widget child;
  void Function()? onPressed;
  void Function()? onTapDown;
  void Function()? onTapCancel;
  @override
  State<StatefulWidget> createState() {
    return _Local();
  }
}

class _Local extends State<AnimatedButton> {
  var isTapDown = false;
  var isPlayingAnimations = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        if (mounted) {
          setState(() {
            isTapDown = true;
            widget.onTapDown?.call();
          });
        }
      },
      onTapUp: (details) {
        if (mounted) {
          setState(() {
            isTapDown = false;
            // widget.onTapCancel?.call();
          });
        }
      },
      // onLongPressEnd: (details) {
      //   setState(() {
      //     isTapDown = false;
      //   });
      // },
      // onForcePressEnd: (details) {
      //   setState(() {
      //     isTapDown = false;
      //   });
      // },
      onTapCancel: () {
        if (mounted) {
          setState(() {
            isTapDown = false;
            widget.onTapCancel?.call();
          });
        }
      },
      onTap: () async {
        if (isPlayingAnimations) {
          return;
        }
        isPlayingAnimations = true;
        if (isTapDown == false) {
          if (mounted) {
            setState(() {
              isTapDown = true;
            });
          }

          await Future.delayed(const Duration(milliseconds: 150));
          if (mounted) {
            setState(() {
              isTapDown = false;
            });
          }
          await Future.delayed(const Duration(milliseconds: 150));
          if (mounted) {
            setState(() {
              widget.onPressed?.call();
            });
          }
        } else {
          if (mounted) {
            setState(() {
              widget.onPressed?.call();
              isTapDown = false;
            });
          }
        }
        isPlayingAnimations = false;
      },
      child: AnimatedScale(
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeInOut,
        scale: isTapDown ? 0.90 : 1,
        alignment: Alignment.topCenter,
        child: widget.child,
      ),
    );
  }
}

class ChildSizeNotifier extends StatelessWidget {
  final ValueNotifier<Size> notifier = ValueNotifier(const Size(0, 0));
  final Widget Function(BuildContext context, Size size, Widget? child) builder;
  final Widget? child;
  ChildSizeNotifier({Key? key, required this.builder, this.child})
    : super(key: key) {}

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      notifier.value = (context.findRenderObject() as RenderBox).size;
    });
    return ValueListenableBuilder(
      valueListenable: notifier,
      builder: builder,
      child: child,
    );
  }
}
