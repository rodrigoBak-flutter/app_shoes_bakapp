import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../widgets/widget.dart';

class ShoesDescScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: 'shoes',
            child: Material(child: ShoesSizeWidget(fullScreen: true)),
          ),
          const SizedBox(
            height: 50,
          ),
          _ColorsAndMore(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.chevron_left,
          color: Colors.white,
          size: 60,
        ),
        // backgroundColor: Colors.transparent,
        elevation: 0,
        highlightElevation: 0,
      ),
    );
  }
}

class _ColorsAndMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Stack(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Positioned(
                left: 60,
                child: _ButtonColor(Color(0xffC6D642), 4),
              ),
              const Positioned(
                left: 40,
                child: _ButtonColor(Color(0xffFFAD29), 3),
              ),
              const Positioned(
                left: 20,
                child: _ButtonColor(Color(0xff2099F1), 2),
              ),
              const _ButtonColor(Color(0xff364D56), 1),
            ],
          ),
        )
      ],
    );
  }
}

class _ButtonColor extends StatelessWidget {
  final int index;

  final Color color;

  const _ButtonColor(
    this.color,
    this.index,
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FadeInLeft(
      delay: Duration(milliseconds: index * 200),
      duration: Duration(milliseconds: 300),
      child: Container(
        margin: const EdgeInsets.only(left: 20),
        width: size.width * 0.060,
        height: size.height * 0.030,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
