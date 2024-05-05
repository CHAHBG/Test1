import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/theme_light_screen/theme_light_screen.dart';

class LoggedScreen extends StatefulWidget {
  const LoggedScreen({Key? key}) : super(key: key);

  @override
  _LoggedScreenState createState() => _LoggedScreenState();
}

class _LoggedScreenState extends State<LoggedScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => ThemeLightScreen(),
          ),
        );
      }
    });
    _animation = Tween<double>(
      begin: -320.0, // Starting position off the screen on the left
      end: 0.0,      // Ending position at the center
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    ));

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.infinity, // Take full width
          child: Column(
            children: [
              Spacer(flex: 1), // Spacer to push content down
              SizedBox(
                height: screenSize.height * 0.3, // 30% of screen height
                width: screenSize.width * 0.8, // 80% of screen width
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.shape,
                      height: screenSize.height * 0.27, // 27% of screen height
                      width: screenSize.width * 0.8, // 80% of screen width
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle142,
                      height: screenSize.height * 0.3, // 30% of screen height
                      width: screenSize.width * 0.8, // 80% of screen width
                      alignment: Alignment.center,
                    ),
                    // Custom train animation
                    AnimatedBuilder(
                      animation: _animation,
                      builder: (context, child) {
                        return Transform.translate(
                          offset: Offset(_animation.value, 0.0),
                          child: child!,
                        );
                      },
                      child: CustomImageView(
                        imagePath: "assets/images/TRain.png", // Path to your train image
                        height: screenSize.height * 0.1, // 5% of screen height
                        width: screenSize.width * 0.4, // 20% of screen width
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenSize.height * 0.04), // 4% of screen height
              Text(
                "msg_vous_tes_connect_e".tr,
                style: CustomTextStyles.headlineMediumGabrielaWhiteA70001,
              ),
              SizedBox(height: screenSize.height * 0.009), // 0.9% of screen height
              Text(
                "msg_laissez_vous_transporter".tr,
                style: CustomTextStyles.titleLargePoppinsWhiteA70001Regular,
              ),
              SizedBox(height: screenSize.height * 0.004), // 0.4% of screen height
              Spacer(flex: 2), // Spacer to push content up
              Align(
                alignment: Alignment.centerLeft,
                child: Divider(
                  color: appTheme.teal50,
                  endIndent: 38.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
