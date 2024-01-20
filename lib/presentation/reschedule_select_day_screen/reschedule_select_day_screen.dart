import 'bloc/reschedule_select_day_bloc.dart';
import 'models/reschedule_select_day_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';
import 'package:telly/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:telly/widgets/app_bar/custom_app_bar.dart';
import 'package:telly/widgets/custom_elevated_button.dart';

class RescheduleSelectDayScreen extends StatelessWidget {
  const RescheduleSelectDayScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RescheduleSelectDayBloc>(
      create: (context) => RescheduleSelectDayBloc(RescheduleSelectDayState(
        rescheduleSelectDayModelObj: RescheduleSelectDayModel(),
      ))
        ..add(RescheduleSelectDayInitialEvent()),
      child: RescheduleSelectDayScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 9.v,
          ),
          child: Column(
            children: [
              Text(
                "lbl_kim_chau2".tr,
                style: CustomTextStyles.bodySmallSecondaryContainer12,
              ),
              SizedBox(height: 1.v),
              Text(
                "msg_guitar_lessons_for2".tr,
                style: CustomTextStyles.titleMedium18,
              ),
              SizedBox(height: 36.v),
              Text(
                "lbl_select_a_day".tr,
                style: CustomTextStyles.titleLargeOpenSans,
              ),
              SizedBox(height: 27.v),
              _buildCalendarForm(context),
              SizedBox(height: 39.v),
              Text(
                "lbl_timezone".tr,
                style: CustomTextStyles.titleLargeOpenSans,
              ),
              SizedBox(height: 29.v),
              CustomElevatedButton(
                text: "lbl_est_1_33_am".tr,
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 15.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGlobe1,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.outlineOnPrimaryContainer,
                buttonTextStyle: CustomTextStyles.titleMediumOpenSans_1,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
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
  Widget _buildCalendarForm(BuildContext context) {
    return BlocBuilder<RescheduleSelectDayBloc, RescheduleSelectDayState>(
      builder: (context, state) {
        return SizedBox(
          height: 340.v,
          width: 370.h,
          child: CalendarDatePicker2(
            config: CalendarDatePicker2Config(
              calendarType: CalendarDatePicker2Type.multi,
              firstDate: DateTime(DateTime.now().year - 5),
              lastDate: DateTime(DateTime.now().year + 5),
              firstDayOfWeek: 0,
              weekdayLabelTextStyle: TextStyle(
                color: theme.colorScheme.primary,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
              ),
              selectedDayTextStyle: TextStyle(
                color: Color(0XFF000000),
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
              ),
              disabledDayTextStyle: TextStyle(
                color: appTheme.gray50001,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.lineThrough,
              ),
              weekdayLabels: ["SU", "M", "T", "W", "TH", "F", "SA"],
              dayBorderRadius: BorderRadius.circular(
                22.h,
              ),
            ),
            value: state.selectedDatesFromCalendar1 ?? [],
            onValueChanged: (dates) {
              state.selectedDatesFromCalendar1 = dates;
            },
          ),
        );
      },
    );
  }
}
