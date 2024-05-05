import '../notifications_screen/widgets/dynamicrowlistsection_item_widget.dart';
import '../notifications_screen/widgets/viewhierarchylistsection_item_widget.dart';
import 'models/dynamicrowlistsection_item_model.dart';
import 'models/viewhierarchylistsection_item_model.dart';
import 'notifier/notifications_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';

class NotificationsScreen extends ConsumerStatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  NotificationsScreenState createState() => NotificationsScreenState();
}

class NotificationsScreenState extends ConsumerState<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black90001,
            body: Container(
                height: MediaQuery.of(context).size.height,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 15.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 14.v),
                      Padding(
                          padding: EdgeInsets.only(left: 28.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgArrowLeft,
                                height: 17.v,
                                width: 10.h,
                                margin: EdgeInsets.symmetric(vertical: 6.v),
                                onTap: () {
                                  onTapImgArrowLeft(context);
                                }),
                            Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: Text("lbl_notifications".tr,
                                    style: theme.textTheme.titleLarge))
                          ])),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 28.h),
                          child: Text("lbl_today".tr,
                              style: CustomTextStyles.titleLargeWhiteA70001_1)),
                      SizedBox(height: 18.v),
                      _buildDynamicRowListSection(context),
                      SizedBox(height: 62.v),
                      Padding(
                          padding: EdgeInsets.only(left: 28.h),
                          child: Text("lbl_yesterday".tr,
                              style: CustomTextStyles.titleLargeWhiteA70001_1)),
                      SizedBox(height: 39.v),
                      _buildViewHierarchyListSection(context)
                    ]))));
  }

  /// Section Widget
  Widget _buildDynamicRowListSection(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 22.v);
          },
          itemCount: ref
                  .watch(notificationsNotifier)
                  .notificationsModelObj
                  ?.dynamicrowlistsectionItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            DynamicrowlistsectionItemModel model = ref
                    .watch(notificationsNotifier)
                    .notificationsModelObj
                    ?.dynamicrowlistsectionItemList[index] ??
                DynamicrowlistsectionItemModel();
            return DynamicrowlistsectionItemWidget(model);
          });
    });
  }

  /// Section Widget
  Widget _buildViewHierarchyListSection(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 31.h, right: 33.h),
            child: Consumer(builder: (context, ref, _) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 38.v);
                  },
                  itemCount: ref
                          .watch(notificationsNotifier)
                          .notificationsModelObj
                          ?.viewhierarchylistsectionItemList
                          .length ??
                      0,
                  itemBuilder: (context, index) {
                    ViewhierarchylistsectionItemModel model = ref
                            .watch(notificationsNotifier)
                            .notificationsModelObj
                            ?.viewhierarchylistsectionItemList[index] ??
                        ViewhierarchylistsectionItemModel();
                    return ViewhierarchylistsectionItemWidget(model);
                  });
            })));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
