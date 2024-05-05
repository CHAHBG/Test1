import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_icon_button.dart';

class HomeDarkScreen extends ConsumerStatefulWidget {
  const HomeDarkScreen({Key? key}) : super(key: key);

  @override
  HomeDarkScreenState createState() => HomeDarkScreenState();
}

class HomeDarkScreenState extends ConsumerState<HomeDarkScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black90001,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 476.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPa2,
                        height: 476.v,
                        width: 428.h,
                        alignment: Alignment.center,
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
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.fromLTRB(22.h, 20.v, 28.h, 409.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEvaMenuOutline,
              height: 47.adaptSize,
              width: 47.adaptSize,
              onTap: () {
                onTapMenu(context);
              },
            ),
            CustomImageView(
              imagePath: ImageConstant.imgFeSearch,
              height: 34.adaptSize,
              width: 34.adaptSize,
              margin: EdgeInsets.only(top: 8.v, bottom: 5.v),
              onTap: () {
                onTapImgFeSearch(context);
              },
            ),
          ],
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
              decoration: AppDecoration.fillGray90003.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL20,
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
                        onTap: onTapStations,
                      ),
                      _buildIcon(
                        context,
                        imagePath: ImageConstant.imgFaSolidBoxOpen,
                        label: "lbl_bagages".tr,
                        onTap: onTapBagages,
                      ),
                      _buildIcon(
                        context,
                        imagePath: ImageConstant.imgTrain,
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
                        imagePath: ImageConstant.imgFontistoTrainTicket,
                        label: "lbl_tickets".tr,
                        onTap: onTapTickets,
                      ),
                      _buildIcon(
                        context,
                        imagePath: ImageConstant.imgTrain, // Replace with correct image
                        label: "lbl_trains".tr,
                        onTap: onTapTrains, // Replace with correct onTap function
                      ),
                      _buildIcon(
                        context,
                        imagePath: ImageConstant.imgTrain, // Replace with correct image
                        label: "lbl_horaires".tr,
                        onTap: onTapHoraires, // Replace with correct onTap function
                      ),
                    ],
                  ),
                ],
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
            decoration: AppDecoration.fillBlack.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder36,
            ),
            child: CustomImageView(
              imagePath: imagePath,
              height: 48.adaptSize,
              width: 48.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            label,
            style: CustomTextStyles.bodyLargeWhiteA70001,
          ),
        ],
      ),
    );
  }

  void onTapStations(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.stationsOneScreen,
    );
  }

  void onTapNotifications(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationsScreen,
    );
  }

  void onTapBagages(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.bagages1DarkScreen,
    );
  }

  void onTapAbonnement(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.abonnementDarkScreen,
    );
  }

  void onTapTickets(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.ticketsDarkScreen,
    );
  }

  void onTapTrains(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.trainsDarkScreen,
    );
  }

  void onTapHoraires(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.horaire1DarkScreen,
    );
  }

  void onTapReglement(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.rGlMNtVoyageurDarkScreen,
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
