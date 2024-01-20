import 'bloc/transactions_cancelled_tab_container_bloc.dart';
import 'models/transactions_cancelled_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';
import 'package:telly/presentation/transactions_cancelled_page/transactions_cancelled_page.dart';
import 'package:telly/presentation/transactions_incoming_page/transactions_incoming_page.dart';
import 'package:telly/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:telly/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class TransactionsCancelledTabContainerPage extends StatefulWidget {
  const TransactionsCancelledTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  TransactionsCancelledTabContainerPageState createState() =>
      TransactionsCancelledTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<TransactionsCancelledTabContainerBloc>(
      create: (context) => TransactionsCancelledTabContainerBloc(
          TransactionsCancelledTabContainerState(
        transactionsCancelledTabContainerModelObj:
            TransactionsCancelledTabContainerModel(),
      ))
        ..add(TransactionsCancelledTabContainerInitialEvent()),
      child: TransactionsCancelledTabContainerPage(),
    );
  }
}

class TransactionsCancelledTabContainerPageState
    extends State<TransactionsCancelledTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionsCancelledTabContainerBloc,
        TransactionsCancelledTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 19.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "lbl_transactions".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 17.v),
                  _buildTabview(context),
                  SizedBox(
                    height: 682.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        TransactionsIncomingPage.builder(context),
                        TransactionsIncomingPage.builder(context),
                        TransactionsCancelledPage.builder(context),
                      ],
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
      width: 350.h,
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
              "lbl_upcoming".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_paid".tr,
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
}
