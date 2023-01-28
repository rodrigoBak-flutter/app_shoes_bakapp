import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  
  CustomAppBar({required this.title});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: size.height * 0.17,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(
                title,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                child: IconButton(
              iconSize: 40,
              icon: const Icon(Icons.search),
              onPressed: () => {
                print('Click seach')
              },
            )),
          ],
        ),
      ),
    );
  }
}
