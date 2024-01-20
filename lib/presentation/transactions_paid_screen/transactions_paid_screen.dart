import 'bloc/transactions_paid_bloc.dart';
import 'models/transactions_paid_model.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';
import 'package:telly/presentation/appointments_upcoming_one_page/appointments_upcoming_one_page.dart';
import 'package:telly/presentation/home_page/home_page.dart';
import 'package:telly/presentation/transactions_cancelled_tab_container_page/transactions_cancelled_tab_container_page.dart';
import 'package:telly/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:telly/widgets/app_bar/custom_app_bar.dart';
import 'package:telly/widgets/custom_bottom_bar.dart';
import 'package:telly/widgets/custom_elevated_button.dart';

class TransactionsPaidScreen extends StatelessWidget {
  TransactionsPaidScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<TransactionsPaidBloc>(
      create: (context) => TransactionsPaidBloc(TransactionsPaidState(
        transactionsPaidModelObj: TransactionsPaidModel(),
      ))
        ..add(TransactionsPaidInitialEvent()),
      child: TransactionsPaidScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionsPaidBloc, TransactionsPaidState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 30.h,
                vertical: 19.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_transactions".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 17.v),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 19.h,
                        right: 22.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 6.v,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "lbl_upcoming".tr,
                              style: CustomTextStyles.bodyMediumGray500,
                            ),
                          ),
                          CustomElevatedButton(
                            height: 30.v,
                            width: 110.h,
                            text: "lbl_paid".tr,
                            buttonTextStyle:
                                CustomTextStyles.bodyMediumWhiteA700,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 5.v,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "lbl_cancelled".tr,
                              style: CustomTextStyles.bodyMediumGray500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 27.v),
                  Text(
                    "lbl_2024".tr,
                    style: CustomTextStyles.titleMediumSecondaryContainer,
                  ),
                  SizedBox(height: 17.v),
                  _buildCardPaid1(context),
                  SizedBox(height: 17.v),
                  Text(
                    "lbl_2023".tr,
                    style: CustomTextStyles.titleMediumSecondaryContainer,
                  ),
                  SizedBox(height: 17.v),
                  _buildCardPaid(context),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.fromLTRB(30.h, 8.v, 360.h, 8.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildCardPaid1(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineGrayA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle54,
            height: 69.adaptSize,
            width: 69.adaptSize,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 3.v,
              bottom: 3.v,
            ),
            child: _buildCardPaid2(
              context,
              paidOnDate: "lbl_paid_on_jan_26".tr,
              cardType: "lbl_mastercard".tr,
              userName: "lbl_sandra_summers".tr,
              zipcode: "lbl_5567".tr,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 40.v,
            ),
            child: Text(
              "lbl_149_99".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCardPaid(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineGrayA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 236.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle5469x69,
                  height: 69.adaptSize,
                  width: 69.adaptSize,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.v),
                  child: _buildCardPaid2(
                    context,
                    paidOnDate: "lbl_paid_on_dec_2".tr,
                    cardType: "lbl_mastercard".tr,
                    userName: "lbl_alex_grammer".tr,
                    zipcode: "lbl_5567".tr,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 40.v,
            ),
            child: Text(
              "lbl_19_99".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildCardPaid2(
    BuildContext context, {
    required String paidOnDate,
    required String cardType,
    required String userName,
    required String zipcode,
  }) {
    return SizedBox(
      height: 61.v,
      width: 152.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              paidOnDate,
              style: theme.textTheme.titleMedium!.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              cardType,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: theme.colorScheme.secondaryContainer,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              userName,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: theme.colorScheme.secondaryContainer,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipsis,
                  height: 3.v,
                  width: 19.h,
                  margin: EdgeInsets.only(
                    top: 9.v,
                    bottom: 8.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    zipcode,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: theme.colorScheme.secondaryContainer,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homeiconprimary:
        return AppRoutes.homePage;
      case BottomBarEnum.Paymenticonsecondarycontainer:
        return AppRoutes.transactionsCancelledTabContainerPage;
      case BottomBarEnum.Appointmenticon:
        return AppRoutes.appointmentsUpcomingOnePage;
      case BottomBarEnum.Messageicon:
        return "/";
      case BottomBarEnum.Profileicon:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage.builder(context);
      case AppRoutes.transactionsCancelledTabContainerPage:
        return TransactionsCancelledTabContainerPage.builder(context);
      case AppRoutes.appointmentsUpcomingOnePage:
        return AppointmentsUpcomingOnePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
