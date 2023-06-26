import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:work_test/features/list_of_deals/presentation/bloc/api_bloc.dart';
import 'package:work_test/features/list_of_deals/presentation/bloc/api_bloc_event.dart';
import 'package:work_test/features/list_of_deals/presentation/bloc/api_bloc_state.dart';
import 'package:work_test/features/list_of_deals/presentation/providers/api_provider.dart';
import 'package:work_test/features/list_of_deals/presentation/widgets/card_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

void _queryApi(context) {
  BlocProvider.of<ApiBloc>(context).add(
    GetApiEvent(),
  );
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ApiProvider>(context);
    double widthScreen = MediaQuery.of(context).size.width;
    print('рестарт');
    return Scaffold(
      backgroundColor: const Color.fromARGB(115, 174, 171, 171),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Продажи STOCRM.ru'),
      ),
      body: BlocBuilder<ApiBloc, ApiBlocState>(
        builder: (context, state) {
          if (state is GetApiQueryState) {
            provider.queryData(data: state.queryData);
            return const CardWidget();
          }
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
        },
      ),
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
