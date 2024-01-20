import 'bloc/transactions_cancelled_bloc.dart';
import 'models/transactions_cancelled_model.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TransactionsCancelledPage extends StatefulWidget {
  const TransactionsCancelledPage({Key? key})
      : super(
          key: key,
        );

  @override
  TransactionsCancelledPageState createState() =>
      TransactionsCancelledPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<TransactionsCancelledBloc>(
      create: (context) => TransactionsCancelledBloc(TransactionsCancelledState(
        transactionsCancelledModelObj: TransactionsCancelledModel(),
      ))
        ..add(TransactionsCancelledInitialEvent()),
      child: TransactionsCancelledPage(),
    );
  }
}

class TransactionsCancelledPageState extends State<TransactionsCancelledPage>
    with AutomaticKeepAliveClientMixin<TransactionsCancelledPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionsCancelledBloc, TransactionsCancelledState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillWhiteA,
              child: Column(
                children: [
                  SizedBox(height: 30.v),
                  _buildCardAppointment(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCardAppointment(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.h),
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineGrayA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse3750x50,
                height: 50.adaptSize,
                width: 50.adaptSize,
                radius: BorderRadius.circular(
                  25.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 4.v,
                  bottom: 5.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_voice_coaching".tr,
                      style: CustomTextStyles.titleMediumSecondaryContainer,
                    ),
                    Text(
                      "lbl_alex_brooks".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "lbl_reason".tr,
              style: CustomTextStyles.titleMediumSecondaryContainer,
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "msg_i_decided_to_take".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
