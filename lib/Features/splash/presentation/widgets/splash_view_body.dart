import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).pushReplacement('/countryView');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/logo.png',
        height: 135.h,
        fit: BoxFit.contain,
      ),
    );
  }
}
