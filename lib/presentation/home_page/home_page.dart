import '../home_page/widgets/column_item_widget.dart';
import '../home_page/widgets/thirtyfour_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/column_item_model.dart';
import 'models/home_model.dart';
import 'models/thirtyfour_item_model.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';
import 'package:telly/widgets/custom_elevated_button.dart';
import 'package:telly/widgets/custom_icon_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
          ..add(HomeInitialEvent()),
        child: HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA,
                child: Column(children: [
                  _buildWelcomeHeader(context),
                  SizedBox(height: 27.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 33.h),
                          child: Text("lbl_appointments".tr,
                              style: CustomTextStyles.titleMedium18))),
                  SizedBox(height: 15.v),
                  _buildDashboardCard(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildWelcomeHeader(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(30.h),
        decoration: AppDecoration.fillPrimary,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 30.v),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(
                width: 202.h,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse374,
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          radius: BorderRadius.circular(25.h)),
                      Padding(
                          padding: EdgeInsets.only(top: 5.v, bottom: 2.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_welcome".tr,
                                    style: theme.textTheme.bodyMedium),
                                Text("lbl_timothy_sanders".tr,
                                    style: CustomTextStyles
                                        .titleMediumWhiteA700Medium)
                              ]))
                    ])),
            CustomIconButton(
                height: 50.adaptSize,
                width: 50.adaptSize,
                padding: EdgeInsets.all(15.h),
                decoration: IconButtonStyleHelper.fillWhiteA,
                child: CustomImageView(imagePath: ImageConstant.imgBell1))
          ]),
          SizedBox(height: 30.v),
          SizedBox(
              height: 125.v,
              child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
                  selector: (state) => state.homeModelObj,
                  builder: (context, homeModelObj) {
                    return ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 20.h);
                        },
                        itemCount: homeModelObj?.columnItemList.length ?? 0,
                        itemBuilder: (context, index) {
                          ColumnItemModel model =
                              homeModelObj?.columnItemList[index] ??
                                  ColumnItemModel();
                          return ColumnItemWidget(model);
                        });
                  })),
          SizedBox(height: 28.v),
          Text("lbl_recent_messages".tr,
              style: CustomTextStyles.titleMediumWhiteA700),
          SizedBox(height: 9.v),
          SizedBox(
              height: 40.v,
              child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
                  selector: (state) => state.homeModelObj,
                  builder: (context, homeModelObj) {
                    return ListView.separated(
                        padding: EdgeInsets.only(right: 272.h),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 18.h);
                        },
                        itemCount: homeModelObj?.thirtyfourItemList.length ?? 0,
                        itemBuilder: (context, index) {
                          ThirtyfourItemModel model =
                              homeModelObj?.thirtyfourItemList[index] ??
                                  ThirtyfourItemModel();
                          return ThirtyfourItemWidget(model);
                        });
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildDashboardCard(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        decoration: AppDecoration.outlineOnPrimaryContainer,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle58,
                  height: 100.v,
                  width: 370.h),
              SizedBox(height: 15.v),
              Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text("msg_guitar_lessons_for".tr,
                      style: theme.textTheme.titleMedium)),
              SizedBox(height: 1.v),
              Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text("msg_friday_february".tr,
                      style: theme.textTheme.bodyMedium)),
              SizedBox(height: 3.v),
              Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text("msg_1_hour_10_32".tr,
                      style: theme.textTheme.bodyMedium)),
              SizedBox(height: 14.v),
              Row(children: [
                CustomElevatedButton(
                    height: 50.v,
                    width: 185.h,
                    text: "lbl_view_details".tr,
                    buttonStyle: CustomButtonStyles.fillGray,
                    buttonTextStyle: CustomTextStyles.titleSmallPrimary_1,
                    onPressed: () {
                      onTapViewDetails(context);
                    }),
                CustomElevatedButton(
                    height: 50.v,
                    width: 185.h,
                    text: "lbl_join_call".tr,
                    buttonStyle: CustomButtonStyles.fillPrimary1,
                    buttonTextStyle: CustomTextStyles.titleSmallWhiteA700)
              ])
            ]));
  }

  /// Navigates to the appointmentDetailInitialLoadScreen when the action is triggered.
  onTapViewDetails(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.appointmentDetailInitialLoadScreen,
    );
  }
}
