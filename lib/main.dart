import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true ,
      builder: (context , child ) {
        return MaterialApp.router(
          title: 'Journo App',
          debugShowCheckedModeBanner: false ,
          theme: AppTheme.light ,
          darkTheme: AppTheme.dark,
          routerConfig: _appRouter.config(),
        );
      }
    );
  }
}
