import 'bloc/appointments_cancelled_tab_container_bloc.dart';
import 'models/appointments_cancelled_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';
import 'package:telly/presentation/appointments_cancelled_page/appointments_cancelled_page.dart';
import 'package:telly/presentation/appointments_completed_page/appointments_completed_page.dart';
import 'package:telly/presentation/appointments_incoming_page/appointments_incoming_page.dart';
import 'package:telly/presentation/appointments_upcoming_one_page/appointments_upcoming_one_page.dart';
import 'package:telly/presentation/home_page/home_page.dart';
import 'package:telly/presentation/transactions_cancelled_tab_container_page/transactions_cancelled_tab_container_page.dart';
import 'package:telly/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:telly/widgets/app_bar/custom_app_bar.dart';
import 'package:telly/widgets/custom_bottom_bar.dart';

class AppointmentsCancelledTabContainerScreen extends StatefulWidget {
  const AppointmentsCancelledTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppointmentsCancelledTabContainerScreenState createState() =>
      AppointmentsCancelledTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<AppointmentsCancelledTabContainerBloc>(
      create: (context) => AppointmentsCancelledTabContainerBloc(
          AppointmentsCancelledTabContainerState(
        appointmentsCancelledTabContainerModelObj:
            AppointmentsCancelledTabContainerModel(),
      ))
        ..add(AppointmentsCancelledTabContainerInitialEvent()),
      child: AppointmentsCancelledTabContainerScreen(),
    );
  }
}

class AppointmentsCancelledTabContainerScreenState
    extends State<AppointmentsCancelledTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppointmentsCancelledTabContainerBloc,
        AppointmentsCancelledTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 21.v),
                  Padding(
                    padding: EdgeInsets.only(left: 30.h),
                    child: Text(
                      "lbl_1_appointment".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  _buildTabview(context),
                  SizedBox(
                    height: 682.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        AppointmentsIncomingPage.builder(context),
                        AppointmentsIncomingPage.builder(context),
                        AppointmentsCompletedPage.builder(context),
                        AppointmentsCancelledPage.builder(context),
                      ],
                    ),
                  ),
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
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 30.v,
      width: 345.h,
      margin: EdgeInsets.only(right: 31.h),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.whiteA700,
        labelStyle: TextStyle(
          fontSize: 13.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.gray500,
        unselectedLabelStyle: TextStyle(
          fontSize: 13.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            15.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_today".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_upcoming".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_completed".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_cancelled".tr,
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
