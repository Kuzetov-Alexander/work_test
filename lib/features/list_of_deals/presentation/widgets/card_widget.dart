import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work_test/features/list_of_deals/presentation/providers/api_provider.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ApiProvider>(context);
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.all(widthScreen * 0.03),
      child: ListView.builder(
        itemCount: provider.dataList.length,
        itemBuilder: (context, index) {
          final data = provider.dataList[index];
          return Container(
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
                          Text('${data['OFFER_ID']}'),
                          SizedBox(width: widthScreen * 0.01),
                          Container(
                            width: widthScreen * 0.01,
                            height: widthScreen * 0.01,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.circular(widthScreen * 0.05)),
                          ),
                          SizedBox(width: widthScreen * 0.01),
                          Text('${data['OFFERS_TYPE_NAME']}'),
                          SizedBox(width: widthScreen * 0.01),
                          Container(
                            width: widthScreen * 0.01,
                            height: widthScreen * 0.01,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.circular(widthScreen * 0.05)),
                          ),
                          SizedBox(width: widthScreen * 0.01),
                          Text('${data['STATUS_NAME']}'),
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
                  Text('${data['CONTACT_TITLE']}'),
                  SizedBox(height: heightScreen * 0.01),
                  const Divider(
                    thickness: 2,
                    height: 1,
                    color: Color.fromARGB(115, 174, 171, 171),
                  ),
                  SizedBox(height: heightScreen * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${data['OFFER_SUM']}'),
                      const Text('Поменять статус'),
                    ],
                  ),
                  SizedBox(height: heightScreen * 0.01),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
