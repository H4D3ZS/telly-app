import 'bloc/appointments_cancelled_bloc.dart';
import 'models/appointments_cancelled_model.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppointmentsCancelledPage extends StatefulWidget {
  const AppointmentsCancelledPage({Key? key})
      : super(
          key: key,
        );

  @override
  AppointmentsCancelledPageState createState() =>
      AppointmentsCancelledPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<AppointmentsCancelledBloc>(
      create: (context) => AppointmentsCancelledBloc(AppointmentsCancelledState(
        appointmentsCancelledModelObj: AppointmentsCancelledModel(),
      ))
        ..add(AppointmentsCancelledInitialEvent()),
      child: AppointmentsCancelledPage(),
    );
  }
}

class AppointmentsCancelledPageState extends State<AppointmentsCancelledPage>
    with AutomaticKeepAliveClientMixin<AppointmentsCancelledPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppointmentsCancelledBloc, AppointmentsCancelledState>(
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
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineGrayA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
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
          Container(
            width: 327.h,
            margin: EdgeInsets.only(
              left: 2.h,
              right: 9.h,
            ),
            child: Text(
              "msg_instructor_has_an".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
