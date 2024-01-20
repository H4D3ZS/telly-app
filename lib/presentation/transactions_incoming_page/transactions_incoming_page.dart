import 'bloc/transactions_incoming_bloc.dart';
import 'models/transactions_incoming_model.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';
import 'package:telly/widgets/custom_elevated_button.dart';
import 'package:telly/widgets/custom_outlined_button.dart';
import 'package:telly/presentation/transactions_incoming_cancel_bottomsheet/transactions_incoming_cancel_bottomsheet.dart';

class TransactionsIncomingPage extends StatefulWidget {
  const TransactionsIncomingPage({Key? key}) : super(key: key);

  @override
  TransactionsIncomingPageState createState() =>
      TransactionsIncomingPageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<TransactionsIncomingBloc>(
        create: (context) => TransactionsIncomingBloc(TransactionsIncomingState(
            transactionsIncomingModelObj: TransactionsIncomingModel()))
          ..add(TransactionsIncomingInitialEvent()),
        child: TransactionsIncomingPage());
  }
}

class TransactionsIncomingPageState extends State<TransactionsIncomingPage>
    with AutomaticKeepAliveClientMixin<TransactionsIncomingPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionsIncomingBloc, TransactionsIncomingState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  decoration: AppDecoration.fillWhiteA,
                  child: Column(children: [
                    SizedBox(height: 30.v),
                    _buildAppointmentCard(context)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildAppointmentCard(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.outlineGrayA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("lbl_amount_due".tr,
              style: CustomTextStyles.bodyMediumOpenSansGray50001),
          SizedBox(height: 4.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 122.h),
                  child: Text("lbl_320_00".tr,
                      style: theme.textTheme.titleLarge))),
          SizedBox(height: 9.v),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse371,
              height: 50.adaptSize,
              width: 50.adaptSize,
              radius: BorderRadius.circular(25.h)),
          SizedBox(height: 6.v),
          Text("lbl_kim_chau2".tr, style: theme.textTheme.bodyMedium),
          Text("msg_guitar_lesson_for2".tr, style: theme.textTheme.titleMedium),
          SizedBox(height: 18.v),
          _buildAppointmentTime(context,
              timeText: "lbl_date".tr, timeRange: "msg_february_10_2024".tr),
          SizedBox(height: 8.v),
          _buildAppointmentTime(context,
              timeText: "lbl_time".tr, timeRange: "msg_10_35am_11_35am".tr),
          SizedBox(height: 10.v),
          _buildSessionDetails(context,
              sessionsText: "lbl_duration".tr,
              countText: "msg_1_hour_per_session".tr),
          SizedBox(height: 9.v),
          _buildSessionDetails(context,
              sessionsText: "lbl_sessions".tr, countText: "lbl_8".tr),
          SizedBox(height: 29.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
                child: CustomElevatedButton(
                    text: "lbl_pay_now".tr,
                    margin: EdgeInsets.only(right: 9.h),
                    buttonStyle: CustomButtonStyles.fillPrimary,
                    onPressed: () {
                      onTapPayNow(context);
                    })),
            Expanded(
                child: CustomOutlinedButton(
                    height: 40.v,
                    text: "lbl_cancel".tr,
                    margin: EdgeInsets.only(left: 9.h),
                    buttonStyle: CustomButtonStyles.outlinePrimaryTL20,
                    buttonTextStyle: CustomTextStyles.titleMediumOpenSans_1,
                    onPressed: () {
                      onTapCancel(context);
                    }))
          ])
        ]));
  }

  /// Common widget
  Widget _buildAppointmentTime(
    BuildContext context, {
    required String timeText,
    required String timeRange,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(timeText,
          style: CustomTextStyles.titleMediumOpenSansSecondaryContainer
              .copyWith(color: theme.colorScheme.secondaryContainer)),
      Text(timeRange,
          style: theme.textTheme.bodyLarge!.copyWith(color: appTheme.gray500))
    ]);
  }

  /// Common widget
  Widget _buildSessionDetails(
    BuildContext context, {
    required String sessionsText,
    required String countText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(sessionsText,
          style: CustomTextStyles.titleMediumOpenSansSecondaryContainer
              .copyWith(color: theme.colorScheme.secondaryContainer)),
      Text(countText,
          style: theme.textTheme.bodyLarge!.copyWith(color: appTheme.gray500))
    ]);
  }

  /// Navigates to the paymentFormScreen when the action is triggered.
  onTapPayNow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.paymentFormScreen,
    );
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [TransactionsIncomingCancelBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapCancel(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => TransactionsIncomingCancelBottomsheet.builder(context),
        isScrollControlled: true);
  }
}
