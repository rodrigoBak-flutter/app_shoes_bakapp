import 'package:app_shoes_bakapp/src/screens/shoes_desc.dart';
import 'package:flutter/material.dart';

class ShoesSizeWidget extends StatelessWidget {
  final bool fullScreen;

  ShoesSizeWidget({this.fullScreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        if (!this.fullScreen) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => ShoesDescScreen(),
            ),
          );
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: (fullScreen) ? 5 : 30,
          vertical: (fullScreen) ? 5 : 0,
        ),
        child: Container(
          width: double.infinity,
          height: size.height * 0.5,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 118, 205, 245),
            borderRadius: (!fullScreen)
                ? BorderRadius.circular(50)
                : BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
          ),
          child: Column(
            children: [
              //Zapato con su sombra
              _ShadeShoes(),

              //Talles
              if (!fullScreen) Size()
            ],
          ),
        ),
      ),
    );
  }
}

class _ShadeShoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Stack(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          //Sombra
          /*
          Container(
            width: size.width * 0.65,
            height: size.height * 0.13,
            // ignore: prefer_const_constructors
           // decoration: BoxDecoration(color: Colors.red
                //borderRadius: BorderRadius.circular(50)
                // ignore: prefer_const_literals_to_create_immutables
                /*
                boxShadow: [
                BoxShadow(color: Colors.black,blurRadius: 40)
              ]
               */
             //   ),
          ),
           */

          // ignore: prefer_const_constructors
          Image(
            image: const AssetImage('assets/azul.png'),
          ),
        ],
      ),
    );
  }
}

class Size extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _SizeShoesBox(7),
          _SizeShoesBox(8),
          _SizeShoesBox(8.5),
          _SizeShoesBox(9),
          _SizeShoesBox(9.5),
        ],
      ),
    );
  }
}

class _SizeShoesBox extends StatelessWidget {
  final double numero;

  const _SizeShoesBox(this.numero);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      // ignore: sort_child_properties_last
      child: Text('${numero.toString().replaceAll('.0', '')}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: (numero == 8) ? Colors.white : Colors.lightBlue,
          )),
      width: size.width * 0.085,
      height: size.height * 0.045,
      decoration: BoxDecoration(
        color: (this.numero == 8) ? Colors.lightBlue : Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          if (this.numero == 8)
            BoxShadow(
              color: Color.fromARGB(255, 42, 183, 249),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
        ],
      ),
    );
  }
}
