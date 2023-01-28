import 'package:flutter/material.dart';

//WIdgets personalizados
import 'package:app_shoes_bakapp/src/widgets/widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              title: 'For You',
            ),
            Hero(
              tag: 'shoes',
              child: Material(
                child: ShoesSizeWidget(
                  fullScreen: false,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
