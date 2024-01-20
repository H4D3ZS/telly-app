import 'bloc/reschedule_appointment_confirmed_bloc.dart';
import 'models/reschedule_appointment_confirmed_model.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';

class RescheduleAppointmentConfirmedScreen extends StatelessWidget {
  const RescheduleAppointmentConfirmedScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RescheduleAppointmentConfirmedBloc>(
      create: (context) => RescheduleAppointmentConfirmedBloc(
          RescheduleAppointmentConfirmedState(
        rescheduleAppointmentConfirmedModelObj:
            RescheduleAppointmentConfirmedModel(),
      ))
        ..add(RescheduleAppointmentConfirmedInitialEvent()),
      child: RescheduleAppointmentConfirmedScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RescheduleAppointmentConfirmedBloc,
        RescheduleAppointmentConfirmedState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 46.v),
              child: Column(
                children: [
                  SizedBox(height: 42.v),
                  SizedBox(
                    width: 260.h,
                    child: Text(
                      "msg_appointment_confirmed".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.displayMedium,
                    ),
                  ),
                  SizedBox(height: 39.v),
                  SizedBox(
                    width: 301.h,
                    child: Text(
                      "msg_you_will_be_meeting".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleMediumUberMoveGray50001
                          .copyWith(
                        height: 1.25,
                      ),
                    ),
                  ),
                  SizedBox(height: 94.v),
                  Text(
                    "msg_wednesday_09_42".tr,
                    style: CustomTextStyles.titleMediumSecondaryContainerMedium,
                  ),
                  SizedBox(height: 9.v),
                  Text(
                    "lbl_august_02_2024".tr,
                    style: CustomTextStyles.titleLargePrimaryContainer,
                  ),
                  SizedBox(height: 30.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse42,
                    height: 120.adaptSize,
                    width: 120.adaptSize,
                    radius: BorderRadius.circular(
                      60.h,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "lbl_kim_chau2".tr,
                    style: CustomTextStyles.titleMedium18,
                  ),
                  Text(
                    "lbl_music_teacher".tr,
                    style: CustomTextStyles.bodySmallSecondaryContainer12,
                  ),
                  Spacer(),
                  SizedBox(
                    width: 181.h,
                    child: Text(
                      "msg_your_invitation".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleMediumUberMoveGray50001
                          .copyWith(
                        height: 1.25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
