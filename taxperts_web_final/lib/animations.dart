
import 'package:flutter/material.dart';

class SlideInAnimation extends StatefulWidget {
  final Widget child;
  final int delay;

  const SlideInAnimation({Key? key, required this.child, this.delay = 0}) : super(key: key);

  @override
  _SlideInAnimationState createState() => _SlideInAnimationState();
}

class _SlideInAnimationState extends State<SlideInAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animationOffset;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    final curve = CurvedAnimation(parent: _controller, curve: Curves.decelerate);
    _animationOffset = Tween<Offset>(begin: const Offset(-0.5, 0.0), end: Offset.zero).animate(curve);

    // Delay the animation if needed
    Future.delayed(Duration(milliseconds: widget.delay), () {
      if (mounted) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animationOffset,
      child: widget.child,
    );
  }
}



class FadeInText extends StatefulWidget {
  final String text;
  final TextStyle style;

  const FadeInText({Key? key, required this.text, required this.style}) : super(key: key);

  @override
  _FadeInTextState createState() => _FadeInTextState();
}

class _FadeInTextState extends State<FadeInText> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller!)
      ..addListener(() {
        setState(() {});
      });

    _controller?.forward();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: _animation!.value,
      child: Text(
        widget.text,
        style: widget.style,
      ),
    );
  }
}

class FadeInButton extends StatefulWidget {
  final Widget button;
  final Duration delay;

  const FadeInButton({Key? key, required this.button, this.delay = const Duration(seconds: 0)}) : super(key: key);

  @override
  _FadeInButtonState createState() => _FadeInButtonState();
}

class _FadeInButtonState extends State<FadeInButton> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _opacity;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 2));
    _opacity = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(parent: _controller!, curve: Curves.easeInOut))
      ..addListener(() => setState(() {}));

    Future.delayed(widget.delay, () {
      if (mounted) {
        _controller?.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _opacity!.value,
      duration: Duration(seconds: 2),
      child: widget.button,
    );
  }
}