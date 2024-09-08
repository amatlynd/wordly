import 'package:flutter/material.dart';
import 'package:wordly/GuessScreen/LetterSection/LetterBlock.dart';

class KeyboardKey extends StatefulWidget {
  const KeyboardKey({super.key});

  @override
  State<KeyboardKey> createState() => _KeyboardKeyState();
}

class _KeyboardKeyState extends State<KeyboardKey>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _visible = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _visible = !_visible;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: MediaQuery.sizeOf(context).height / 18,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              color: _visible ? Colors.greenAccent : Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: const Center(
            child: Text(
              'A',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
