import 'package:dw_barbershop/src/core/ui/widgets/constants.dart';
import 'package:dw_barbershop/src/features/auth/login/login_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  var _scale = 10.0;
  var _animationOpacityLogo = 0.0;

  double get _logoAnimationWidth => _scale * 100;
  double get _logoAnimationHeight => _scale * 120;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _animationOpacityLogo = 1.0;
        _scale = 1.0;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConstants.black,
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ImageConstants.backgroundChair),
              opacity: 0.3,
              fit: BoxFit.cover),
        ),
        child: Center(
          child: AnimatedOpacity(
              duration: const Duration(seconds: 1),
              curve: Curves.easeIn,
              opacity: _animationOpacityLogo,
              onEnd: () {
                Navigator.of(context).pushAndRemoveUntil(
                    PageRouteBuilder(
                      settings: const RouteSettings(name: '/auth/login'),
                      pageBuilder: (
                        context,
                        animation,
                        secundaryAnimation,
                      ) {
                        return const LoginPage();
                      },
                      transitionsBuilder: (_, animation, __, child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      },
                    ),
                    (route) => false);
              },
              child: AnimatedContainer(
                height: _logoAnimationHeight,
                width: _logoAnimationWidth,
                duration: const Duration(seconds: 1),
                curve: Curves.linearToEaseOut,
                child: Image.asset(
                  ImageConstants.imageLogo,
                  fit: BoxFit.cover,
                ),
              )),
        ),
      ),
    );
  }
}
