import 'package:flutter/material.dart';
import 'core/themes/app_theme.dart';
import 'presentation/router/router_imports.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter() ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Journo App',
      debugShowCheckedModeBanner: false ,
      theme: AppTheme.light ,
      darkTheme: AppTheme.dark,
      routerConfig: _appRouter.config(),
    );
  }
}
