import 'bloc/home_container_bloc.dart';
import 'models/home_container_model.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';
import 'package:telly/presentation/appointments_upcoming_one_page/appointments_upcoming_one_page.dart';
import 'package:telly/presentation/home_page/home_page.dart';
import 'package:telly/presentation/transactions_cancelled_tab_container_page/transactions_cancelled_tab_container_page.dart';
import 'package:telly/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomeContainerScreen extends StatelessWidget {
  HomeContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeContainerBloc>(
        create: (context) => HomeContainerBloc(
            HomeContainerState(homeContainerModelObj: HomeContainerModel()))
          ..add(HomeContainerInitialEvent()),
        child: HomeContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeContainerBloc, HomeContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.homePage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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
