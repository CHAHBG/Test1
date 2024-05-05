import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';

class AppNavigationScreen extends ConsumerStatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
}

class AppNavigationScreenState extends ConsumerState<AppNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Bagages 2 Dark".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Tickets 3 Dark".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "begin Dark".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Dark - Version Six".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign_In".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Carte Dark".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "begin".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Réglémént voyageur Dark".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Schedule_Two".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment method One".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mail_or_message".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Loop_notification".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Getinh Started Dark".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Verfication_code".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Getinh_Started".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Horaire1 Dark".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Réglement Two".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "station details Dark".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Abonnement Dark".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Trains Dark".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Getinh_Started_Two".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notifications_Three".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pw-Reset Dark".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "theme_dark".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Five".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Parcle".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "theme_light".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Tickets_Details".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Logged_".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notifications".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Tickets 2 Dark".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "station_details".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login_Page".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "home Dark".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login Page Dark".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "stations".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign In Dark".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Réglement".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "home".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Parcle_Two".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign In Dark One".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Carte".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Trains_Details".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "stations One".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Light_-_Version_Six".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Trains_Three".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Abonnement".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Tickets Dark".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Getinh Started_2 Dark".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Bagages 1 Dark".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pw-Reset".tr,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment_Method_".tr,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF888888),
          ),
        ],
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
