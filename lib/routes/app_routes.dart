import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/presentation/bagages_2_dark_screen/bagages_2_dark_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/tickets_3_dark_screen/tickets_3_dark_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/begin_dark_screen/begin_dark_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/dark_version_six_screen/dark_version_six_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/carte_dark_screen/carte_dark_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/begin_screen/begin_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/r_gl_m_nt_voyageur_dark_screen/r_gl_m_nt_voyageur_dark_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/schedule_two_screen/schedule_two_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/payment_method_one_screen/payment_method_one_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/mail_or_message_screen/mail_or_message_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/loop_notification_screen/loop_notification_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/getinh_started_dark_screen/getinh_started_dark_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/verfication_code_screen/verfication_code_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/getinh_started_screen/getinh_started_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/horaire1_dark_screen/horaire1_dark_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/r_glement_two_screen/r_glement_two_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/station_details_dark_screen/station_details_dark_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/abonnement_dark_screen/abonnement_dark_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/trains_dark_screen/trains_dark_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/getinh_started_two_screen/getinh_started_two_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/notifications_three_screen/notifications_three_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/pw_reset_dark_screen/pw_reset_dark_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/theme_dark_screen/theme_dark_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/frame_five_screen/frame_five_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/parcle_screen/parcle_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/theme_light_screen/theme_light_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/tickets_details_screen/tickets_details_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/logged_screen/logged_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/notifications_screen/notifications_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/tickets_2_dark_screen/tickets_2_dark_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/station_details_screen/station_details_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/login_page_screen/login_page_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/home_dark_screen/home_dark_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/login_page_dark_screen/login_page_dark_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/stations_screen/stations_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/sign_in_dark_screen/sign_in_dark_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/r_glement_screen/r_glement_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/frame_screen/frame_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/home_screen/home_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/parcle_two_screen/parcle_two_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/sign_in_dark_one_screen/sign_in_dark_one_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/carte_screen/carte_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/trains_details_screen/trains_details_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/stations_one_screen/stations_one_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/light_version_six_screen/light_version_six_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/trains_three_screen/trains_three_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/abonnement_screen/abonnement_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/tickets_dark_screen/tickets_dark_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/getinh_started_2_dark_screen/getinh_started_2_dark_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/bagages_1_dark_screen/bagages_1_dark_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/pw_reset_screen/pw_reset_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:ibrahima_s_application_seter/presentation/app_navigation_screen/app_navigation_screen.dart';

import '../presentation/menu_dark_draweritem/menu_dark_draweritem.dart';
import '../presentation/number_login_screen.dart';
import '../presentation/tickets_screen/tickets_screen.dart';

class AppRoutes {
  static const String bagages2DarkScreen = '/bagages_2_dark_screen';

  static const String tickets3DarkScreen = '/tickets_3_dark_screen';

  static const String beginDarkScreen = '/begin_dark_screen';

  static const String darkVersionSixScreen = '/dark_version_six_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String carteDarkScreen = '/carte_dark_screen';

  static const String beginScreen = '/begin_screen';

  static const String rGlMNtVoyageurDarkScreen =
      '/r_gl_m_nt_voyageur_dark_screen';

  static const String scheduleTwoScreen = '/schedule_two_screen';

  static const String paymentMethodOneScreen = '/payment_method_one_screen';

  static const String mailOrMessageScreen = '/mail_or_message_screen';

  static const String loopNotificationScreen = '/loop_notification_screen';

  static const String getinhStartedDarkScreen = '/getinh_started_dark_screen';

  static const String verficationCodeScreen = '/verfication_code_screen';

  static const String getinhStartedScreen = '/getinh_started_screen';

  static const String horaire1DarkScreen = '/horaire1_dark_screen';

  static const String rGlementTwoScreen = '/r_glement_two_screen';

  static const String stationDetailsDarkScreen = '/station_details_dark_screen';

  static const String abonnementDarkScreen = '/abonnement_dark_screen';

  static const String trainsDarkScreen = '/trains_dark_screen';

  static const String getinhStartedTwoScreen = '/getinh_started_two_screen';

  static const String notificationsThreeScreen = '/notifications_three_screen';

  static const String pwResetDarkScreen = '/pw_reset_dark_screen';

  static const String themeDarkScreen = '/theme_dark_screen';

  static const String frameFiveScreen = '/frame_five_screen';

  static const String parcleScreen = '/parcle_screen';

  static const String themeLightScreen = '/theme_light_screen';

  static const String ticketsDetailsScreen = '/tickets_details_screen';

  static const String loggedScreen = '/logged_screen';

  static const String numberLoginScreen = '/number_login_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String tickets2DarkScreen = '/tickets_2_dark_screen';

  static const String stationDetailsScreen = '/station_details_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String homeDarkScreen = '/home_dark_screen';

  static const String loginPageDarkScreen = '/login_page_dark_screen';

  static const String stationsScreen = '/stations_screen';

  static const String signInDarkScreen = '/sign_in_dark_screen';

  static const String rGlementScreen = '/r_glement_screen';

  static const String frameScreen = '/frame_screen';

  static const String homeScreen = '/home_screen';

  static const String parcleTwoScreen = '/parcle_two_screen';

  static const String signInDarkOneScreen = '/sign_in_dark_one_screen';

  static const String carteScreen = '/carte_screen';

  static const String trainsDetailsScreen = '/trains_details_screen';

  static const String stationsOneScreen = '/stations_one_screen';

  static const String lightVersionSixScreen = '/light_version_six_screen';

  static const String trainsThreeScreen = '/trains_three_screen';

  static const String abonnementScreen = '/abonnement_screen';

  static const String ticketsDarkScreen = '/tickets_dark_screen';

  static const String ticketsScreen = '/tickets_dark_screen';

  static const String getinhStarted2DarkScreen =
      '/getinh_started_2_dark_screen';

  static const String bagages1DarkScreen = '/bagages_1_dark_screen';

  static const String pwResetScreen = '/pw_reset_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String menuDarkDraw = '/menu_dark_draweritem';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    bagages2DarkScreen: (context) => Bagages2DarkScreen(),
    tickets3DarkScreen: (context) => Tickets3DarkScreen(),
    ticketsScreen: (context) => TicketsScreen(),

    beginDarkScreen: (context) => BeginDarkScreen(),
    darkVersionSixScreen: (context) => DarkVersionSixScreen(),
    signInScreen: (context) => SignInScreen(),
    carteDarkScreen: (context) => CarteDarkScreen(),
    beginScreen: (context) => BeginScreen(),
    rGlMNtVoyageurDarkScreen: (context) => RGlMNtVoyageurDarkScreen(),
    scheduleTwoScreen: (context) => ScheduleTwoScreen(),
    paymentMethodOneScreen: (context) => PaymentMethodOneScreen(),
    mailOrMessageScreen: (context) => MailOrMessageScreen(),
    loopNotificationScreen: (context) => LoopNotificationScreen(),
    getinhStartedDarkScreen: (context) => GetinhStartedDarkScreen(),
    verficationCodeScreen: (context) => VerficationCodeScreen(),
    getinhStartedScreen: (context) => GetinhStartedScreen(),
    horaire1DarkScreen: (context) => Horaire1DarkScreen(),
    rGlementTwoScreen: (context) => RGlementTwoScreen(),
    stationDetailsDarkScreen: (context) => StationDetailsDarkScreen(),
    abonnementDarkScreen: (context) => AbonnementDarkScreen(),
    trainsDarkScreen: (context) => TrainsDarkScreen(),
    getinhStartedTwoScreen: (context) => GetinhStartedTwoScreen(),
    notificationsThreeScreen: (context) => NotificationsThreeScreen(),
    pwResetDarkScreen: (context) => PwResetDarkScreen(),
    themeDarkScreen: (context) => ThemeDarkScreen(),
    frameFiveScreen: (context) => FrameFiveScreen(),
    parcleScreen: (context) => ParcleScreen(),
    themeLightScreen: (context) => ThemeLightScreen(),
    ticketsDetailsScreen: (context) => TicketsDetailsScreen(),
    loggedScreen: (context) => LoggedScreen(),
    numberLoginScreen: (context) => NumberLoginScreen(),
    notificationsScreen: (context) => NotificationsScreen(),
    tickets2DarkScreen: (context) => Tickets2DarkScreen(),
    stationDetailsScreen: (context) => StationDetailsScreen(),
    loginPageScreen: (context) => LoginPageScreen(),
    homeDarkScreen: (context) => HomeDarkScreen(),
    loginPageDarkScreen: (context) => LoginPageDarkScreen(),
    stationsScreen: (context) => StationsScreen(),
    signInDarkScreen: (context) => SignInDarkScreen(),
    rGlementScreen: (context) => RGlementScreen(),
    frameScreen: (context) => FrameScreen(),
    homeScreen: (context) => HomeScreen(),
    parcleTwoScreen: (context) => ParcleTwoScreen(),
    signInDarkOneScreen: (context) => SignInDarkOneScreen(),
    carteScreen: (context) => CarteScreen(),
    trainsDetailsScreen: (context) => TrainsDetailsScreen(),
    stationsOneScreen: (context) => StationsOneScreen(),
    lightVersionSixScreen: (context) => LightVersionSixScreen(),
    trainsThreeScreen: (context) => TrainsThreeScreen(),
    abonnementScreen: (context) => AbonnementScreen(),
    ticketsDarkScreen: (context) => TicketsDarkScreen(),
    getinhStarted2DarkScreen: (context) => GetinhStarted2DarkScreen(),
    bagages1DarkScreen: (context) => Bagages1DarkScreen(),
    pwResetScreen: (context) => PwResetScreen(),
    paymentMethodScreen: (context) => PaymentMethodScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    menuDarkDraw: (context) => MenuDarkDraweritem(),
    initialRoute: (context) => BeginScreen(),
  };
}
