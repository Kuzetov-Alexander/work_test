import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:work_test/features/list_of_deals/presentation/bloc/api_bloc.dart';
import 'package:work_test/features/list_of_deals/presentation/bloc/api_bloc_event.dart';
import 'package:work_test/features/list_of_deals/presentation/widgets/card_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
      body: CardWidget(widthScreen: widthScreen, heightScreen: heightScreen),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _queryApi(context);
        },
        backgroundColor: Colors.red,
        child: const Icon(Icons.cloud_upload),
      ),
    );
  }
}

void _queryApi(context) {
  BlocProvider.of<ApiBloc>(context).add(
    GetApiEvent(),
  );
}
