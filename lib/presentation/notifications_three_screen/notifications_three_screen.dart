import '../notifications_three_screen/widgets/viewhierarchy1_item_widget.dart';
import '../notifications_three_screen/widgets/viewhierarchy_item_widget.dart';
import 'models/viewhierarchy1_item_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'notifier/notifications_three_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';

class NotificationsThreeScreen extends ConsumerStatefulWidget {
  const NotificationsThreeScreen({Key? key}) : super(key: key);

  @override
  NotificationsThreeScreenState createState() =>
      NotificationsThreeScreenState();
}

class NotificationsThreeScreenState
    extends ConsumerState<NotificationsThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 15.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 14.v),
                      Padding(
                          padding: EdgeInsets.only(left: 33.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgArrowLeft,
                                height: 17.v,
                                width: 10.h,
                                margin: EdgeInsets.only(top: 8.v, bottom: 4.v),
                                onTap: () {
                                  onTapImgArrowLeft(context);
                                }),
                            Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text("lbl_notifications".tr,
                                    style: theme.textTheme.titleLarge))
                          ])),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 28.h),
                          child: Text("lbl_aujourdh_ui".tr,
                              style: CustomTextStyles.titleLargeBlack90002_1)),
                      SizedBox(height: 18.v),
                      _buildViewHierarchy(context),
                      SizedBox(height: 59.v),
                      Padding(
                          padding: EdgeInsets.only(left: 28.h),
                          child: Text("lbl_hier".tr,
                              style: CustomTextStyles.titleLargeBlack90002_1)),
                      SizedBox(height: 41.v),
                      _buildViewHierarchy1(context)
                    ]))));
  }

  /// Section Widget
  Widget _buildViewHierarchy(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 22.v);
          },
          itemCount: ref
                  .watch(notificationsThreeNotifier)
                  .notificationsThreeModelObj
                  ?.viewhierarchyItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            ViewhierarchyItemModel model = ref
                    .watch(notificationsThreeNotifier)
                    .notificationsThreeModelObj
                    ?.viewhierarchyItemList[index] ??
                ViewhierarchyItemModel();
            return ViewhierarchyItemWidget(model);
          });
    });
  }

  /// Section Widget
  Widget _buildViewHierarchy1(BuildContext context) {
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
                          .watch(notificationsThreeNotifier)
                          .notificationsThreeModelObj
                          ?.viewhierarchy1ItemList
                          .length ??
                      0,
                  itemBuilder: (context, index) {
                    Viewhierarchy1ItemModel model = ref
                            .watch(notificationsThreeNotifier)
                            .notificationsThreeModelObj
                            ?.viewhierarchy1ItemList[index] ??
                        Viewhierarchy1ItemModel();
                    return Viewhierarchy1ItemWidget(model);
                  });
            })));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
