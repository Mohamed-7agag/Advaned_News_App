import 'package:flutter/material.dart';

import '../widgets/country_view_body.dart';

class CountryView extends StatelessWidget {
  const CountryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CountryViewBody(),
      ),
    );
  }
}
