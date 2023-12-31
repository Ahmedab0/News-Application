
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var spinkit = const SpinKitCubeGrid(
      color: Colors.orange,//Theme.of(context).colorScheme.inversePrimary,
      size: 50.0,
    );
    return  SliverToBoxAdapter(
        child: Center(
            child: Padding(
          padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.4),
          child: spinkit,
        ))
    );
  }
}
