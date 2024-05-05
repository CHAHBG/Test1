import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

import '../../wolof_assistant.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> with TickerProviderStateMixin {
  late PageController _pageController;
  int _currentPage = 0;
  Timer? _timer;
  FlutterTts flutterTts = FlutterTts();
  stt.SpeechToText speech = stt.SpeechToText();

  bool _speechEnabled = false;
  String _wordsSpoken = "";
  double _confidenceLevel = 0;
  late WolofAssistant assistant;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _startTimer();
    _initializeSpeech();
    assistant = WolofAssistant();
  }

  void _initializeSpeech() async {
    _speechEnabled = await speech.initialize();
    setState(() {});
  }

  void _startListening() async {
    bool available = await speech.initialize();
    if (available) {
      await speech.listen(
        onResult: (result) {
          setState(() {
            _wordsSpoken = result.recognizedWords;
            _confidenceLevel = result.confidence;
            _checkKeywords(_wordsSpoken);
          });
        },
      );
      setState(() {
        _confidenceLevel = 0;
      });
    } else {
      print("Speech recognition not available");
    }
  }

  void _checkKeywords(String words) async {
    final detectedLanguage = await assistant.detectLanguage(words);
    final translatedText = await assistant.translateText(words, detectedLanguage);
    if (translatedText.toLowerCase().contains('train')) {
      onTapTrain(context);
    } else if (translatedText.toLowerCase().contains('station')) {
      onTapTwentyNine(context);
    } else if (translatedText.toLowerCase().contains('abonnement')) {
      onTapAbonnement(context);
    } else if (translatedText.toLowerCase().contains('bagages')) {
      onTapTwentySix(context);
    } else if (translatedText.toLowerCase().contains('ticket')) {
      onTapTrainTicket(context);
    } else if (translatedText.toLowerCase().contains('horaires')) {
      onTapTwentyEight(context);
    }
  }


  void _stopListening() async {
    await speech.stop();
    setState(() {});
  }

  @override
  void dispose() {
    assistant.dispose();
    _pageController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      if (_pageController.hasClients) {
        _pageController.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 480.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      PageView(
                        controller: _pageController,
                        onPageChanged: (int page) {
                          setState(() {
                            _currentPage = page;
                          });
                        },
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgPa3,
                            height: 620.v,
                            width: screenWidth,
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgPa4,
                            height: 485.v,
                            width: screenWidth,
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgPa5,
                            height: 620.v,
                            width: screenWidth,
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgPa6,
                            height: 620.v,
                            width: screenWidth,
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgPa7,
                            height: 620.v,
                            width: screenWidth,
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgPa8,
                            height: 620.v,
                            width: screenWidth,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                      _buildMenuRow(context),
                    ],
                  ),
                ),
                _buildNextStack(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuRow(BuildContext context) {
    return SizedBox(
      height: 47.adaptSize,
      width: double.infinity,
      child: GestureDetector(
        onHorizontalDragStart: (details) {
          if (details.localPosition.dx < MediaQuery.of(context).size.width / 3 &&
              details.localPosition.dy < MediaQuery.of(context).padding.top + kToolbarHeight) {
            onTapMenu(context);
          }
        },
        child: Container(
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Remove the menu logo
              SizedBox(),
              // Remove the search icon
              SizedBox(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNextStack(BuildContext context) {
    return SizedBox(
      height: 407.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 99.v),
              child: Text(
                "lbl_next".tr,
                style: CustomTextStyles.titleLargeBlack90001,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 57.v),
              decoration: BoxDecoration(
                color: Colors.white, // Change to white color
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8.0,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildIcon(
                        context,
                        imagePath: ImageConstant.imgTrain,
                        label: "lbl_stations".tr,
                        onTap: onTapTwentyNine,
                      ),
                      _buildIcon(
                        context,
                        imagePath: ImageConstant.imgFaSolidBoxOpen,
                        label: "lbl_bagages".tr,
                        onTap: onTapTwentySix,
                      ),
                      _buildIcon(
                        context,
                        imagePath: ImageConstant.imgAbonnement,
                        label: "lbl_abonnement".tr,
                        onTap: onTapAbonnement,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildIcon(
                        context,
                        imagePath: ImageConstant.imgTicket,
                        label: "lbl_tickets".tr,
                        onTap: onTapTrainTicket,
                      ),
                      _buildIcon(
                        context,
                        imagePath: ImageConstant.imgTrain, // Replace with correct image
                        label: "lbl_trains".tr,
                        onTap: onTapTrain, // Replace with correct onTap function
                      ),
                      _buildIcon(
                        context,
                        imagePath: ImageConstant.imgHoraires, // Replace with correct image
                        label: "lbl_horaires".tr,
                        onTap: onTapTwentyEight, // Replace with correct onTap function
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: FloatingActionButton(
                onPressed: _startListening,
                tooltip: 'Start Listening',
                child: Icon(Icons.mic),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                _wordsSpoken, // Display recognized words here
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(
      BuildContext context, {
        required String imagePath,
        required String label,
        required Function onTap,
      }) {
    return GestureDetector(
      onTap: () {
        onTap(context);
      },
      child: Column(
        children: [
          Container(
            height: 72.adaptSize,
            width: 72.adaptSize,
            margin: EdgeInsets.only(left: 2.h),
            padding: EdgeInsets.all(12.h),
            decoration: BoxDecoration(
              color: Color(0x2280542B), // 14% opacity
              borderRadius: BorderRadius.circular(36.0),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgTrain,
              height: 48.adaptSize,
              width: 48.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0, // Adjust as needed
            ),
          ),
        ],
      ),
    );
  }

  void onTapTwentyNine(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.stationsScreen,
    );
  }

  void onTapTwentyEight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.horaire1DarkScreen,
    );
  }

  void onTapTwentySix(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.ticketsDarkScreen,
    );
  }

  void onTapAbonnement(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.abonnementScreen,
    );
  }

  void onTapTrainTicket(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.ticketsScreen,
    );
  }

  void onTapTrain(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.trainsThreeScreen,
    );
  }

  void onTapMenu(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.menuDarkDraw,
    );
  }

  /// Navigates to the search screen when the search icon is tapped.
  void onTapImgFeSearch(BuildContext context) {
    // Add your navigation logic here
  }
}
