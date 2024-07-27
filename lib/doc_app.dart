import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/home/ui/home_screen.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doc App',
        theme: ThemeData(
          primaryColor: AppColor.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        // initialRoute: Routes.onBoardingScreen,
        home: const HomeScreen(),
        // onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
