import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:work_test/features/list_of_deals/presentation/bloc/api_bloc.dart';
import 'package:work_test/features/list_of_deals/presentation/bloc/api_bloc_event.dart';
import 'package:work_test/features/list_of_deals/presentation/bloc/api_bloc_state.dart';
import 'package:work_test/features/list_of_deals/presentation/providers/api_provider.dart';
import 'package:work_test/features/list_of_deals/presentation/widgets/card_widget.dart';
import 'package:work_test/features/list_of_deals/presentation/widgets/initial_widget.dart';

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
    return Scaffold(
      backgroundColor: const Color.fromARGB(115, 174, 171, 171),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Продажи STOCRM.ru'),
      ),
      body: BlocConsumer<ApiBloc, ApiBlocState>(
        listener: (context, state) {
          if (state is GetApiQueryState) {
            provider.queryData(data: state.queryData);
          }
        },
        builder: (context, state) {
          if (state is DownloadingQueryState) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is GetApiQueryState) {
            return const CardWidget();
          }
          return const InitialWidget();
        },
      ),
      floatingActionButton: BlocBuilder<ApiBloc, ApiBlocState>(
        builder: (context, state) {
          return FloatingActionButton(
            onPressed: state is DownloadingQueryState
                ? null
                : () {
                    _queryApi(context);
                  },
            backgroundColor: Colors.red,
            child: const Icon(Icons.cloud_upload),
          );
        },
      ),
    );
  }
}
