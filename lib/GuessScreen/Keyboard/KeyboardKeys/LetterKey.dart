import 'package:flutter/material.dart';
import 'dart:math';

class LetterKey extends StatefulWidget {
  final String letterChar;
  final Duration delay;
  const LetterKey(
      {this.letterChar = '', this.delay = Duration.zero, super.key});

  @override
  State<LetterKey> createState() => _LetterKeyState();
}

class _LetterKeyState extends State<LetterKey> with TickerProviderStateMixin {
  late AnimationController _spinController;
  late AnimationController _colorController;
  late Animation<double> _spinAnimation;
  late Animation<Color?> _colorAnimation;
  bool _visible = true;

  @override
  void initState() {
    super.initState();
    _spinController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _colorController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
      reverseDuration: const Duration(milliseconds: 200),
    );
    _colorAnimation = ColorTween(begin: Colors.greenAccent, end: Colors.grey)
        .animate(_colorController);
    _spinAnimation = Tween<double>(begin: 0, end: pi).animate(_spinController);

    Future.delayed(widget.delay, () {
      _spinController.forward();
      _colorController.forward();
    });
  }

  @override
  void dispose() {
    _spinController.dispose();
    super.dispose();
  }

  void _toggleVisibility() {
    if (_visible) {
      _spinController.reverse();
      _colorController.reverse();
    } else {
      _spinController.forward();
      _colorController.forward();
    }
    setState(() {
      _visible = !_visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: _toggleVisibility,
        child: AnimatedBuilder(
          animation: Listenable.merge([_spinAnimation, _colorAnimation]),
          builder: (context, child) {
            return Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.002)
                ..rotateX(_spinAnimation.value),
              alignment: Alignment.center,
              child: Container(
                height: MediaQuery.sizeOf(context).height / 18,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  color: _colorAnimation.value,
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: Center(
                  child: Transform(
                    transform: Matrix4.identity()
                      ..rotateX(-_spinAnimation.value),
                    alignment: Alignment.center,
                    child: Text(
                      widget.letterChar,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
