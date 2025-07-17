import 'package:auth_print/src/core/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  GetStorage box = GetStorage();

  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);

    _animation = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(0, -0.05),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    checkLoginStatus();
  }

  @override
  void dispose() {
    _controller.dispose(); // Cleanup
    super.dispose();
  }

  void checkLoginStatus() async {
    // Delay for splash screen effect
    await Future.delayed(const Duration(seconds: 2));

    Get.offAllNamed(Routes.home);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SlideTransition(
          position: _animation,
          child: Image.asset(
            "assets/icons/logo_icon.png",
            width: 150,
            height: 150,
          ),
        ),
      ),
    );
  }
}
