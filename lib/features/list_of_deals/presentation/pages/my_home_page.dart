import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(115, 174, 171, 171),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Продажи STOCRM.ru'),
      ),
      body: Padding(
        padding: EdgeInsets.all(widthScreen * 0.03),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  width: widthScreen,
                  height: heightScreen * 0.17,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(widthScreen * 0.05),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(widthScreen * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text('#20124'),
                                SizedBox(width: widthScreen * 0.01),
                                Container(
                                  width: widthScreen * 0.01,
                                  height: widthScreen * 0.01,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(
                                          widthScreen * 0.05)),
                                ),
                                SizedBox(width: widthScreen * 0.01),
                                const Text('7 мес'),
                                SizedBox(width: widthScreen * 0.01),
                                Container(
                                  width: widthScreen * 0.01,
                                  height: widthScreen * 0.01,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(
                                          widthScreen * 0.05)),
                                ),
                                SizedBox(width: widthScreen * 0.01),
                                const Text('Отказ'),
                              ],
                            ),
                            SizedBox(width: widthScreen * 0.01),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_horiz_rounded),
                            ),
                          ],
                        ),
                        SizedBox(height: heightScreen * 0.01),
                        const Text('FullName'),
                        SizedBox(height: heightScreen * 0.01),
                        ColoredBox(
                          color: const Color.fromARGB(115, 174, 171, 171),
                          child: SizedBox(
                            height: heightScreen * 0.002,
                            width: widthScreen,
                          ),
                        ),
                        SizedBox(height: heightScreen * 0.01),
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
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: const Icon(Icons.cloud_upload),
      ),
    );
  }
}
