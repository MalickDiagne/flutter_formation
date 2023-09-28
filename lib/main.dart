import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'const/theme.dart';
import 'exemple/ui_exemple/basketball_ui_exemple/basketball_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1080, 2160),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => MaterialApp(
        theme: CustomTheme.defaultTheme,
        home: const PageBasketBall(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
