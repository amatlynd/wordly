import 'package:flutter/material.dart';

class BackspaceKey extends StatefulWidget {
  const BackspaceKey({super.key});

  @override
  State<BackspaceKey> createState() => _BackspaceKeyState();
}

class _BackspaceKeyState extends State<BackspaceKey>
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
              child: Icon(
            Icons.backspace_outlined,
            color: Colors.white,
          )),
        ),
      ),
    );
  }
}
