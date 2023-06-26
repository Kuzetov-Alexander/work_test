import 'package:flutter/material.dart';

class InitialWidget extends StatelessWidget {
  const InitialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(widthScreen * 0.03),
      child: Column(
        children: [
          Container(
            width: widthScreen,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: Colors.white,
              borderRadius: BorderRadius.circular(widthScreen * 0.05),
            ),
            child: Padding(
              padding: EdgeInsets.all(widthScreen * 0.03),
              child: const Column(
                children: [
                  Text(
                    'Все решает кнопочка)',
                    style: TextStyle(fontSize: 32),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
