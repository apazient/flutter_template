import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/app/bloc/app_bloc.dart';
import 'package:flutter_template/app/shared/app_router.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc(),
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          if (state is AppLoadingState) {
            return const Center(child: CircularProgressIndicator());
          }
          return MaterialApp.router(
            routerConfig: AppRouter(),
            title: 'App',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(useMaterial3: true),
          );
        },
      ),
    );
  }
}
