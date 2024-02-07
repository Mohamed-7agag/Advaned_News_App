import '../../Features/home/presentation/widgets/shimmer_effect.dart';
import 'package:flutter/material.dart';


class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return const ShimmerEffect();
      },
    );
  }
}
