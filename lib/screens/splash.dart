import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../app_constants.dart';
import '../theme.dart';
import '../widgets/primary_button.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool _isBackgroundVisible = false;

  @override
  void initState() {
    super.initState();

    // init fade in animation after 500 ms
    Timer(
      const Duration(milliseconds: 500),
      () => setState(
        () {
          _isBackgroundVisible = true;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 1500),
          opacity: _isBackgroundVisible ? 1 : 0,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/images/splash_background.png'),
              ),
              Container(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/icons/logo.svg'),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: Text(
                        'Find Cozy House\nto Stay and Happy',
                        style: mediumFont.copyWith(fontSize: 24),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Save your time and money here\nFind the best house to stay!',
                        style: lightFont.copyWith(
                            fontSize: 16, color: darkGreyColor),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      width: 210,
                      height: 50,
                      child: PrimaryButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, Routes.home);
                          },
                          text: 'Explore Now'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
