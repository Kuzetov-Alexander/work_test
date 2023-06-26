import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({
    super.key,
    required this.widthScreen,
    required this.heightScreen,
  });

  final double widthScreen;
  final double heightScreen;

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(widget.widthScreen * 0.03),
      child: Column(
        children: [
          Container(
            width: widget.widthScreen,
            height: widget.heightScreen * 0.17,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: Colors.white,
              borderRadius: BorderRadius.circular(widget.widthScreen * 0.05),
            ),
            child: Padding(
              padding: EdgeInsets.all(widget.widthScreen * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text('#20124'),
                          SizedBox(width: widget.widthScreen * 0.01),
                          Container(
                            width: widget.widthScreen * 0.01,
                            height: widget.widthScreen * 0.01,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(
                                    widget.widthScreen * 0.05)),
                          ),
                          SizedBox(width: widget.widthScreen * 0.01),
                          const Text('7 мес'),
                          SizedBox(width: widget.widthScreen * 0.01),
                          Container(
                            width: widget.widthScreen * 0.01,
                            height: widget.widthScreen * 0.01,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(
                                    widget.widthScreen * 0.05)),
                          ),
                          SizedBox(width: widget.widthScreen * 0.01),
                          const Text('Отказ'),
                        ],
                      ),
                      SizedBox(width: widget.widthScreen * 0.01),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_horiz_rounded),
                      ),
                    ],
                  ),
                  SizedBox(height: widget.heightScreen * 0.01),
                  const Text('FullName'),
                  SizedBox(height: widget.heightScreen * 0.01),
                  const Divider(
                    thickness: 2,
                    height: 1,
                    color: Color.fromARGB(115, 174, 171, 171),
                  ),
                  SizedBox(height: widget.heightScreen * 0.01),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('17005.00 руб.'),
                      Text('Поменять статус'),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 10)
        ],
      ),
    );
  }
}
